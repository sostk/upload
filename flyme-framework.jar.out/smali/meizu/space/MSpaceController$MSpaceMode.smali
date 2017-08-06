.class public final enum Lmeizu/space/MSpaceController$MSpaceMode;
.super Ljava/lang/Enum;
.source "MSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/space/MSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSpaceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmeizu/space/MSpaceController$MSpaceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmeizu/space/MSpaceController$MSpaceMode;

.field public static final enum CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

.field public static final enum PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lmeizu/space/MSpaceController$MSpaceMode;

    const-string/jumbo v1, "PRIVACY"

    invoke-direct {v0, v1, v2}, Lmeizu/space/MSpaceController$MSpaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/space/MSpaceController$MSpaceMode;->PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;

    new-instance v0, Lmeizu/space/MSpaceController$MSpaceMode;

    const-string/jumbo v1, "CHILDREN"

    invoke-direct {v0, v1, v3}, Lmeizu/space/MSpaceController$MSpaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/space/MSpaceController$MSpaceMode;->CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lmeizu/space/MSpaceController$MSpaceMode;

    sget-object v1, Lmeizu/space/MSpaceController$MSpaceMode;->PRIVACY:Lmeizu/space/MSpaceController$MSpaceMode;

    aput-object v1, v0, v2

    sget-object v1, Lmeizu/space/MSpaceController$MSpaceMode;->CHILDREN:Lmeizu/space/MSpaceController$MSpaceMode;

    aput-object v1, v0, v3

    sput-object v0, Lmeizu/space/MSpaceController$MSpaceMode;->$VALUES:[Lmeizu/space/MSpaceController$MSpaceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmeizu/space/MSpaceController$MSpaceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lmeizu/space/MSpaceController$MSpaceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmeizu/space/MSpaceController$MSpaceMode;

    return-object v0
.end method

.method public static values()[Lmeizu/space/MSpaceController$MSpaceMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmeizu/space/MSpaceController$MSpaceMode;->$VALUES:[Lmeizu/space/MSpaceController$MSpaceMode;

    return-object v0
.end method
