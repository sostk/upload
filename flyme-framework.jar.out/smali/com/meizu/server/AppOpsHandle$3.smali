.class Lcom/meizu/server/AppOpsHandle$3;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AppOpsHandle;


# direct methods
.method constructor <init>(Lcom/meizu/server/AppOpsHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AppOpsHandle;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle$3;->this$0:Lcom/meizu/server/AppOpsHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle$3;->this$0:Lcom/meizu/server/AppOpsHandle;

    const/4 v1, 0x1

    invoke-static {v0, p1, v2, v2, v1}, Lcom/meizu/server/AppOpsHandle;->-wrap2(Lcom/meizu/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V

    .line 254
    return-void
.end method
