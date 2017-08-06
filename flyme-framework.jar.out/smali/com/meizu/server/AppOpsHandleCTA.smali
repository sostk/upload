.class public Lcom/meizu/server/AppOpsHandleCTA;
.super Ljava/lang/Object;
.source "AppOpsHandleCTA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/AppOpsHandleCTA$DialogItem;,
        Lcom/meizu/server/AppOpsHandleCTA$1;
    }
.end annotation


# static fields
.field public static final APPOPS_NOT_DEFINE:I = -0x1

.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_ALLOWED_ALWAYLS:I = 0x4

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_DENIED_ALWAYLS:I = 0x3

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field public static DEBUG:Z = false

.field private static final DISMISS:I = 0x2

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FlymePermissionManager"

.field private static final UPDATE_DEFUAT:I = 0x0

.field private static final ctsKey:Ljava/lang/String; = "persist.perm.dialog"

.field private static final ctsRunningValue:Ljava/lang/String; = "disable"

.field private static mCtsRuning:Z


# instance fields
.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/server/AppOpsHandleCTA$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageLabel:Ljava/lang/String;

.field private mPermissonContentString:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field private mShortcutLock:Ljava/lang/Object;

.field private mShortcutWait:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/meizu/server/AppOpsHandleCTA;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/meizu/server/AppOpsHandleCTA;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandleCTA;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/server/AppOpsHandleCTA;Lcom/meizu/server/AppOpsHandleCTA$DialogItem;)V
    .locals 0
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandleCTA;->updateDialogList(Lcom/meizu/server/AppOpsHandleCTA$DialogItem;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/server/AppOpsHandleCTA;Landroid/content/DialogInterface;ZZZ)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/server/AppOpsHandleCTA;->update(Landroid/content/DialogInterface;ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "persist.perm.dialog"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "disable"

    .line 53
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/server/AppOpsHandleCTA;->mCtsRuning:Z

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonContentString:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPackageLabel:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutWait:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/meizu/server/AppOpsHandleCTA$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/AppOpsHandleCTA$1;-><init>(Lcom/meizu/server/AppOpsHandleCTA;)V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    .line 365
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    .line 364
    return-void
.end method

.method private checkDialogList(IILjava/lang/String;)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-boolean v2, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 151
    const-string/jumbo v2, "FlymePermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDialogList code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    .line 153
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    iget v2, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    if-ne p1, v2, :cond_1

    iget v2, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->uid:I

    if-ne p2, v2, :cond_1

    .line 154
    iget-object v2, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 153
    if-eqz v2, :cond_1

    .line 155
    iget-object v2, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    sget-boolean v2, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 158
    const-string/jumbo v2, "FlymePermissionManager"

    const-string/jumbo v3, "checkDialogList:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 163
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    :cond_3
    sget-boolean v2, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 164
    const-string/jumbo v2, "FlymePermissionManager"

    const-string/jumbo v3, "checkDialogList:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private getPackageNameFromUid(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "callingProcessName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 621
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 623
    sget-boolean v5, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v5, :cond_2

    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, v2

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 625
    const-string/jumbo v5, "FlymePermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ctatest pkgs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    aget-object v5, v2, v0

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 627
    aget-object v5, v2, v0

    return-object v5

    .line 624
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_1
    array-length v5, v2

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 632
    return-object v8

    .line 635
    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_2
    const/4 v5, 0x0

    aget-object v1, v2, v5

    .line 637
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getPermissonTypeDetails(I)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 609
    const-string/jumbo v0, ""

    .line 611
    .local v0, "mPermissonDetailsString":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    .line 610
    invoke-static {v2, p1}, Lmeizu/security/FlymePermissionManager;->getPermissonTypeDetails(Landroid/content/Context;I)Lmeizu/security/FlymePermissionManager$TitleAndContent;

    move-result-object v1

    .line 612
    .local v1, "titleAndContent":Lmeizu/security/FlymePermissionManager$TitleAndContent;
    iget-object v0, v1, Lmeizu/security/FlymePermissionManager$TitleAndContent;->title:Ljava/lang/String;

    .line 613
    iget-object v2, v1, Lmeizu/security/FlymePermissionManager$TitleAndContent;->content:Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonContentString:Ljava/lang/String;

    .line 614
    return-object v0
.end method

.method public static getProcessNameFromPid(I)Ljava/lang/String;
    .locals 12
    .param p0, "pid"    # I

    .prologue
    .line 642
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 643
    .local v1, "charset":Ljava/nio/charset/Charset;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 644
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-direct {v8, v9, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 646
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 647
    .local v7, "orgLine":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 651
    const-string/jumbo v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPackageNameFromPid, charset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 652
    const-string/jumbo v10, ", pid="

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 652
    const-string/jumbo v10, ", orgLength="

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 652
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 653
    const-string/jumbo v10, ", trim line="

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 653
    const-string/jumbo v10, ", length="

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 653
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 651
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 656
    const-string/jumbo v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 657
    .local v4, "index":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_0

    .line 658
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 660
    :cond_0
    return-object v6

    .line 662
    .end local v4    # "index":I
    :cond_1
    return-object v6

    .line 668
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "orgLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 669
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "FlymePermissionManager"

    const-string/jumbo v9, "getPackageNameFromPid, exception occurs"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 665
    :catch_1
    move-exception v5

    .line 666
    .local v5, "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPackageNameFromPid, failed to read line from /proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 667
    const-string/jumbo v10, "/cmdline does not exist"

    .line 666
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 663
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 664
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "FlymePermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPackageNameFromPid, /proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/cmdline does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 573
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 576
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 577
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "installTitle":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    return v6

    .line 582
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 583
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 582
    if-eqz v4, :cond_2

    .line 584
    :cond_1
    return v6

    .line 586
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "installTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v7
.end method

.method private showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "checkIntent"    # Landroid/content/Intent;

    .prologue
    .line 248
    const-string/jumbo v5, "INTENT_SHORTCUT"

    .line 249
    const/4 v6, 0x0

    .line 248
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 250
    .local v26, "shortCut":Z
    new-instance v10, Landroid/app/AlertDialog$Builder;

    .line 252
    const/4 v5, 0x5

    .line 250
    move-object/from16 v0, p1

    invoke-direct {v10, v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 253
    .local v10, "b":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/flyme/internal/R$layout;->mc_permission_dialog_view:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 255
    .local v30, "view":Landroid/view/View;
    sget v5, Lcom/flyme/internal/R$id;->event_remember:I

    .line 254
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 256
    .local v24, "remember":Landroid/widget/CheckBox;
    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    sget v5, Lcom/flyme/internal/R$string;->allow_check_app:I

    .line 258
    new-instance v6, Lcom/meizu/server/AppOpsHandleCTA$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/meizu/server/AppOpsHandleCTA$2;-><init>(Lcom/meizu/server/AppOpsHandleCTA;Landroid/widget/CheckBox;)V

    .line 257
    invoke-virtual {v10, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    sget v5, Lcom/flyme/internal/R$string;->not_allow_check_app:I

    .line 268
    new-instance v6, Lcom/meizu/server/AppOpsHandleCTA$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/meizu/server/AppOpsHandleCTA$3;-><init>(Lcom/meizu/server/AppOpsHandleCTA;Landroid/widget/CheckBox;)V

    .line 267
    invoke-virtual {v10, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 278
    .local v7, "d":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    sget v5, Lcom/flyme/internal/R$id;->event_title:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 281
    .local v29, "title":Landroid/widget/TextView;
    if-nez v26, :cond_3

    .line 282
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/server/AppOpsHandleCTA;->getPermissonTypeDetails(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 284
    sget v6, Lcom/flyme/internal/R$string;->dlg_check_app_message_on:I

    .line 283
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aput-object v32, v31, v33

    .line 283
    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    .line 289
    :goto_0
    const-string/jumbo v5, "INTENT_NETMSG"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 290
    .local v22, "msg":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u5730\u5740:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    .line 294
    :cond_0
    sget-boolean v5, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v5, :cond_1

    .line 295
    const-string/jumbo v5, "callingProcessName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 296
    .local v14, "callingProcessName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u8fdb\u7a0b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    .line 301
    .end local v14    # "callingProcessName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 303
    const/4 v5, -0x1

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 304
    .local v13, "button":Landroid/widget/Button;
    new-instance v5, Lcom/meizu/server/AppOpsHandleCTA$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/meizu/server/AppOpsHandleCTA$4;-><init>(Lcom/meizu/server/AppOpsHandleCTA;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 316
    sget v5, Lcom/flyme/internal/R$id;->event_icon:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 317
    .local v18, "icon":Landroid/widget/ImageView;
    sget v5, Lcom/flyme/internal/R$id;->event_content:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 318
    .local v27, "shortcutName":Landroid/widget/TextView;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    if-eqz v26, :cond_5

    .line 322
    const/4 v11, 0x0

    .line 323
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 325
    .local v19, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    const-string/jumbo v5, "android.intent.extra.shortcut.ICON"

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 326
    .local v12, "bitmapParcelable":Landroid/os/Parcelable;
    const-string/jumbo v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 327
    .local v28, "strShortcutName":Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    if-eqz v12, :cond_4

    instance-of v5, v12, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    move-object v11, v12

    .line 329
    check-cast v11, Landroid/graphics/Bitmap;

    .line 330
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .end local v19    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v28    # "strShortcutName":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v5, "uid"

    const/4 v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 354
    .local v8, "uid":I
    const-string/jumbo v5, "pkg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;-><init>(Lcom/meizu/server/AppOpsHandleCTA;ILandroid/app/AlertDialog;ILjava/lang/String;)V

    .line 356
    .local v4, "item":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    .line 358
    .local v21, "message":Landroid/os/Message;
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iput v5, v0, Landroid/os/Message;->what:I

    .line 359
    move-object/from16 v0, v21

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v32, 0x4fb0

    move-object/from16 v0, v21

    move-wide/from16 v1, v32

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    return-void

    .line 286
    .end local v4    # "item":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    .end local v8    # "uid":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v13    # "button":Landroid/widget/Button;
    .end local v18    # "icon":Landroid/widget/ImageView;
    .end local v21    # "message":Landroid/os/Message;
    .end local v22    # "msg":Ljava/lang/String;
    .end local v27    # "shortcutName":Landroid/widget/TextView;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 287
    sget v6, Lcom/flyme/internal/R$string;->dlg_check_app_shortcut:I

    .line 286
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPackageLabel:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v32, v31, v33

    .line 286
    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 333
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .restart local v13    # "button":Landroid/widget/Button;
    .restart local v18    # "icon":Landroid/widget/ImageView;
    .restart local v19    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .restart local v22    # "msg":Ljava/lang/String;
    .restart local v27    # "shortcutName":Landroid/widget/TextView;
    .restart local v28    # "strShortcutName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 332
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    .line 334
    .local v17, "extra":Landroid/os/Parcelable;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    instance-of v5, v0, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_2

    .line 336
    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v19, v0

    .line 337
    .local v19, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 339
    .local v23, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 338
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v25

    .line 340
    .local v25, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 341
    .local v20, "id":I
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 342
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 343
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v19    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v20    # "id":I
    .end local v23    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v25    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 349
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapParcelable":Landroid/os/Parcelable;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "extra":Landroid/os/Parcelable;
    .end local v28    # "strShortcutName":Ljava/lang/String;
    :cond_5
    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    const/16 v5, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 169
    const-string/jumbo v5, "code"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "code":I
    const-string/jumbo v5, "uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, "uid":I
    const-string/jumbo v5, "pkg"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0, v4, v3}, Lcom/meizu/server/AppOpsHandleCTA;->checkDialogList(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    const/4 v2, 0x0

    .line 178
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 179
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPackageLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, p1}, Lcom/meizu/server/AppOpsHandleCTA;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 168
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private update(Landroid/content/DialogInterface;ZZZ)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "item":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    .line 195
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v4, p1, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 195
    if-eqz v4, :cond_0

    .line 198
    :cond_1
    move-object v2, v0

    .line 203
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    .end local v2    # "item":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 204
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 205
    if-eqz p2, :cond_5

    .line 206
    if-eqz p4, :cond_4

    .line 207
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    const/4 v6, 0x4

    .line 207
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    :goto_0
    invoke-direct {p0, v2, v7}, Lcom/meizu/server/AppOpsHandleCTA;->updatePermissionControl(Lcom/meizu/server/AppOpsHandleCTA$DialogItem;Z)V

    .line 192
    :cond_3
    :goto_1
    return-void

    .line 211
    :cond_4
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 217
    :cond_5
    if-eqz p3, :cond_6

    .line 219
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    const-string/jumbo v6, "_op_"

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 221
    .local v3, "res":I
    if-ne v3, v8, :cond_3

    .line 222
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 227
    .end local v3    # "res":I
    :cond_6
    invoke-direct {p0, v2, v9}, Lcom/meizu/server/AppOpsHandleCTA;->updatePermissionControl(Lcom/meizu/server/AppOpsHandleCTA$DialogItem;Z)V

    .line 228
    if-eqz p4, :cond_7

    .line 229
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    const/4 v6, 0x3

    .line 229
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 233
    :cond_7
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method private updateDialogList(Lcom/meizu/server/AppOpsHandleCTA$DialogItem;)V
    .locals 8
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;

    .line 131
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    iget v4, p1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->uid:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    .line 132
    iget-object v4, p1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 133
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "mPackageNameStringOp":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 139
    .local v3, "message":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 140
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    .end local v2    # "mPackageNameStringOp":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandleCTA;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void

    .line 129
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/meizu/server/AppOpsHandleCTA$DialogItem;Z)V
    .locals 0
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
    .param p2, "limit"    # Z

    .prologue
    .line 243
    return-void
.end method


# virtual methods
.method public handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I
    .locals 21
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/meizu/server/FlymePermissionService;
    .param p5, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 394
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->mCtsRuning:Z

    if-eqz v4, :cond_1

    .line 395
    const-string/jumbo v4, "FlymePermissionManager"

    const-string/jumbo v5, "cts tester is running"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 397
    const/4 v4, 0x1

    return v4

    .line 399
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 402
    :cond_1
    const-string/jumbo v4, "INTENT_SHORTCUT"

    const/4 v5, 0x0

    .line 401
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 403
    .local v17, "shortCut":Z
    invoke-static/range {p3 .. p3}, Lmeizu/security/FlymePermissionManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 404
    sget-boolean v4, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-nez v4, :cond_2

    .line 405
    const/4 v4, 0x0

    return v4

    .line 407
    :cond_2
    const/16 v4, 0x49

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    .line 408
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 411
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 409
    :cond_4
    const/16 v4, 0x3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    .line 410
    const/16 v4, 0x38

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    .line 417
    :cond_5
    if-nez v17, :cond_15

    .line 418
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 419
    .local v13, "localLock":Ljava/lang/Object;
    monitor-enter v13

    .line 421
    const/4 v12, 0x0

    .line 422
    .local v12, "i":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 423
    .local v15, "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 424
    const/4 v5, -0x1

    .line 423
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 425
    .local v16, "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 426
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    .line 428
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_8

    .line 429
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 430
    const/4 v4, 0x1

    monitor-exit v13

    return v4

    .line 432
    :cond_7
    const/4 v4, 0x0

    monitor-exit v13

    return v4

    .line 437
    :cond_8
    const/16 v18, 0x2

    .line 438
    .local v18, "value":I
    :try_start_1
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 439
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_9
    const/16 v16, 0x2

    .line 450
    .end local v18    # "value":I
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_b

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_c

    .line 452
    :cond_b
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    .line 451
    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandleCTA;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :cond_c
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_10

    :cond_d
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_10

    .line 457
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-virtual {v13, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 458
    add-int/lit8 v12, v12, 0x1

    .line 459
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 460
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :cond_e
    :goto_1
    :try_start_3
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 466
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 468
    const/4 v5, 0x2

    .line 467
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 469
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 470
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 419
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :catchall_0
    move-exception v4

    monitor-exit v13

    throw v4

    .line 473
    .restart local v15    # "opName":Ljava/lang/String;
    .restart local v16    # "res":I
    :cond_10
    const/4 v4, 0x4

    move/from16 v0, v16

    if-eq v0, v4, :cond_13

    .line 474
    const/4 v4, 0x3

    move/from16 v0, v16

    if-eq v0, v4, :cond_13

    .line 475
    :goto_2
    :try_start_4
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 476
    .local v14, "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v14, Landroid/os/Message;->what:I

    .line 477
    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v14, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    .end local v14    # "message":Landroid/os/Message;
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    .line 482
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_14

    .line 483
    :cond_12
    const/4 v4, 0x0

    monitor-exit v13

    return v4

    .line 474
    :cond_13
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    goto :goto_2

    .line 485
    :cond_14
    const/4 v4, 0x1

    monitor-exit v13

    return v4

    .line 489
    .end local v12    # "i":I
    .end local v13    # "localLock":Ljava/lang/Object;
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meizu/server/AppOpsHandleCTA;->isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 490
    const/4 v4, 0x0

    return v4

    .line 492
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 493
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutWait:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 495
    const/4 v12, 0x0

    .line 496
    .restart local v12    # "i":I
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 497
    .restart local v15    # "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 498
    const/4 v5, -0x1

    .line 497
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 499
    .restart local v16    # "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_17

    .line 500
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_17
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1b

    .line 502
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-eqz v4, :cond_19

    .line 503
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    :try_start_7
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 504
    const/4 v4, 0x1

    monitor-exit v19

    return v4

    :cond_18
    :try_start_8
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 506
    const/4 v4, 0x0

    monitor-exit v19

    return v4

    .line 511
    :cond_19
    const/16 v18, 0x2

    .line 512
    .restart local v18    # "value":I
    :try_start_9
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_1a

    .line 513
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1a
    const/16 v16, 0x2

    .line 524
    .end local v18    # "value":I
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_1c

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1d

    .line 526
    :cond_1c
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    .line 525
    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandleCTA;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 529
    :cond_1d
    :goto_3
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_1e

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_21

    :cond_1e
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_21

    .line 531
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 532
    add-int/lit8 v12, v12, 0x1

    .line 533
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_1f

    .line 534
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 539
    :cond_1f
    :goto_4
    :try_start_b
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_20

    .line 540
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 542
    const/4 v5, 0x2

    .line 541
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 543
    sget-boolean v4, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v4, :cond_1d

    .line 544
    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 493
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :catchall_1
    move-exception v4

    :try_start_c
    monitor-exit v20

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 492
    .end local v12    # "i":I
    :catchall_2
    move-exception v4

    monitor-exit v19

    throw v4

    .line 547
    .restart local v12    # "i":I
    .restart local v15    # "opName":Ljava/lang/String;
    .restart local v16    # "res":I
    :cond_21
    const/4 v4, 0x4

    move/from16 v0, v16

    if-eq v0, v4, :cond_24

    .line 548
    const/4 v4, 0x3

    move/from16 v0, v16

    if-eq v0, v4, :cond_24

    .line 549
    :goto_5
    :try_start_d
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 550
    .restart local v14    # "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v14, Landroid/os/Message;->what:I

    .line 551
    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 554
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandleCTA;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 560
    .end local v14    # "message":Landroid/os/Message;
    :cond_22
    :goto_6
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_23

    .line 561
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_25

    :cond_23
    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 562
    const/4 v4, 0x0

    monitor-exit v19

    return v4

    .line 548
    :cond_24
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_22

    goto :goto_5

    :cond_25
    :try_start_10
    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 564
    const/4 v4, 0x1

    monitor-exit v19

    return v4

    .line 555
    .restart local v14    # "message":Landroid/os/Message;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    goto :goto_6

    .line 535
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "message":Landroid/os/Message;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 461
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "localLock":Ljava/lang/Object;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method public handleIntentPidOperation(IIILcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "service"    # Lcom/meizu/server/FlymePermissionService;
    .param p5, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 379
    invoke-static {p3}, Lcom/meizu/server/AppOpsHandleCTA;->getProcessNameFromPid(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "callingProcessName":Ljava/lang/String;
    invoke-direct {p0, p2, v6}, Lcom/meizu/server/AppOpsHandleCTA;->getPackageNameFromUid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "callingPkg":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v0, "system_server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string/jumbo v0, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 381
    if-eqz v0, :cond_2

    .line 383
    :cond_0
    sget-boolean v0, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 384
    const-string/jumbo v0, "FlymePermissionManager"

    const-string/jumbo v1, "android granted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_2
    const-string/jumbo v0, "callingProcessName"

    invoke-virtual {p5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandleCTA;->handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "enable"    # Z
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 596
    const-string/jumbo v0, "code"

    invoke-virtual {p6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const-string/jumbo v0, "uid"

    invoke-virtual {p6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string/jumbo v0, "pkg"

    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string/jumbo v0, "result"

    invoke-virtual {p6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string/jumbo v0, "enable"

    invoke-virtual {p6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    sget-boolean v0, Lcom/meizu/server/AppOpsHandleCTA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 602
    const-string/jumbo v0, "FlymePermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queueOperationMessage code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA;->mPhHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public setCtsRunning(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_0

    .line 370
    sput-boolean p1, Lcom/meizu/server/AppOpsHandleCTA;->mCtsRuning:Z

    .line 371
    const-string/jumbo v0, "persist.perm.dialog"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "permission deny!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
