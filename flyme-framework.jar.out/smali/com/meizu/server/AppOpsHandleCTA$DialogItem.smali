.class Lcom/meizu/server/AppOpsHandleCTA$DialogItem;
.super Ljava/lang/Object;
.source "AppOpsHandleCTA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/AppOpsHandleCTA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogItem"
.end annotation


# instance fields
.field public code:I

.field public dialog:Landroid/app/AlertDialog;

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/server/AppOpsHandleCTA;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/meizu/server/AppOpsHandleCTA;ILandroid/app/AlertDialog;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AppOpsHandleCTA;
    .param p2, "code"    # I
    .param p3, "dAlertDialog"    # Landroid/app/AlertDialog;
    .param p4, "uid"    # I
    .param p5, "pkg"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p2, p0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->code:I

    .line 123
    iput-object p3, p0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->dialog:Landroid/app/AlertDialog;

    .line 124
    iput p4, p0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->uid:I

    .line 125
    iput-object p5, p0, Lcom/meizu/server/AppOpsHandleCTA$DialogItem;->pkg:Ljava/lang/String;

    .line 121
    return-void
.end method
