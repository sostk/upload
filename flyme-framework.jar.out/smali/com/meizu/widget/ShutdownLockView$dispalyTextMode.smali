.class final enum Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;
.super Ljava/lang/Enum;
.source "ShutdownLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/ShutdownLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "dispalyTextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

.field public static final enum NORMAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

.field public static final enum PASSWORD:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

.field public static final enum SPECIAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    const-string/jumbo v1, "PASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->PASSWORD:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    new-instance v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->NORMAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    new-instance v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    const-string/jumbo v1, "SPECIAL"

    invoke-direct {v0, v1, v4}, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->SPECIAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    sget-object v1, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->PASSWORD:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->NORMAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->SPECIAL:Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->$VALUES:[Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;->$VALUES:[Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;

    return-object v0
.end method
