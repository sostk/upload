.class public final Landroid/provider/MzContactsContract;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzContactsContract$MzDirectory;,
        Landroid/provider/MzContactsContract$MzContactOptionsColumns;,
        Landroid/provider/MzContactsContract$MzContactColumns;,
        Landroid/provider/MzContactsContract$MzContacts;,
        Landroid/provider/MzContactsContract$MzRawContactColumns;,
        Landroid/provider/MzContactsContract$MzData;,
        Landroid/provider/MzContactsContract$MzPhoneLookup;,
        Landroid/provider/MzContactsContract$MzSearchSnippetColumns;,
        Landroid/provider/MzContactsContract$MzCommonDataKinds;,
        Landroid/provider/MzContactsContract$MzGroupsColumns;,
        Landroid/provider/MzContactsContract$MzGroups;,
        Landroid/provider/MzContactsContract$MzSettingsColumns;,
        Landroid/provider/MzContactsContract$MzSettings;,
        Landroid/provider/MzContactsContract$MzQuickContact;,
        Landroid/provider/MzContactsContract$MzDisplayPhoto;,
        Landroid/provider/MzContactsContract$MzIntents;,
        Landroid/provider/MzContactsContract$MzSpamAddress;,
        Landroid/provider/MzContactsContract$MzAccounts;,
        Landroid/provider/MzContactsContract$MzSpeedDial;,
        Landroid/provider/MzContactsContract$MzNetContacts;
    }
.end annotation


# static fields
.field public static final ALLOW_CALLLOGS_PARAM_KEY:Ljava/lang/String; = "allow_calllogs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HAS_MORE_KEY:Ljava/lang/String; = "has_more"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final START_PARAM_KEY:Ljava/lang/String; = "start"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USE_WEIGHT_ORDER:Ljava/lang/String; = "use_weight_order"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "content://com.meizu.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 66
    const-string/jumbo v0, "content://com.android.contacts.notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 1193
    const-string/jumbo v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1192
    sput-object v0, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/provider/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1207
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1205
    :cond_0
    return-void
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 28
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetStartMatch"    # C
    .param p4, "snippetEndMatch"    # C
    .param p5, "snippetEllipsis"    # Ljava/lang/String;
    .param p6, "snippetMaxTokens"    # I

    .prologue
    .line 1094
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1095
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1096
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 1095
    if-nez v21, :cond_2

    .line 1096
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1103
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, "lowerDisplayName":Ljava/lang/String;
    :goto_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v16, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v15, "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1, v15}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1107
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "nameToken$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1108
    .local v13, "nameToken":Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1109
    const/16 v21, 0x0

    return-object v21

    .line 1094
    .end local v8    # "lowerDisplayName":Ljava/lang/String;
    .end local v13    # "nameToken":Ljava/lang/String;
    .end local v14    # "nameToken$iterator":Ljava/util/Iterator;
    .end local v15    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x0

    .local v9, "lowerQuery":Ljava/lang/String;
    goto :goto_0

    .line 1097
    .end local v9    # "lowerQuery":Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    return-object v21

    .line 1103
    :cond_3
    const-string/jumbo v8, ""

    .restart local v8    # "lowerDisplayName":Ljava/lang/String;
    goto :goto_1

    .line 1113
    .restart local v14    # "nameToken$iterator":Ljava/util/Iterator;
    .restart local v15    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v21, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "contentLines":[Ljava/lang/String;
    const/16 v21, 0x0

    array-length v0, v3

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    aget-object v2, v3, v21

    .line 1117
    .local v2, "contentLine":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v7, "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v20, "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v20

    invoke-static {v2, v7, v0}, Landroid/provider/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1128
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v12, "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, -0x1

    .line 1131
    .local v4, "firstToken":I
    const/4 v6, -0x1

    .line 1132
    .local v6, "lastToken":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v5, v0, :cond_7

    .line 1133
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1134
    .local v19, "token":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1135
    .local v10, "lowerToken":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1139
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_5

    .line 1147
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 1148
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 1147
    div-double v24, v24, v26

    .line 1146
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v5, v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1150
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    .line 1151
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 1150
    add-int v24, v24, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1132
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1154
    :cond_6
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1159
    .end local v10    # "lowerToken":Ljava/lang/String;
    .end local v19    # "token":Ljava/lang/String;
    :cond_7
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v4, v0, :cond_c

    .line 1160
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v18, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_8

    .line 1162
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_8
    move v5, v4

    :goto_5
    if-ge v5, v6, :cond_a

    .line 1165
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1166
    .local v11, "markedToken":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1167
    .local v17, "originalToken":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    if-ge v5, v0, :cond_9

    .line 1172
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v21

    .line 1173
    add-int/lit8 v21, v5, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1171
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1176
    .end local v11    # "markedToken":Ljava/lang/String;
    .end local v17    # "originalToken":Ljava/lang/String;
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_b

    .line 1177
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 1116
    .end local v4    # "firstToken":I
    .end local v5    # "i":I
    .end local v6    # "lastToken":I
    .end local v7    # "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 1183
    .end local v2    # "contentLine":Ljava/lang/String;
    :cond_d
    const/16 v21, 0x0

    return-object v21
.end method
