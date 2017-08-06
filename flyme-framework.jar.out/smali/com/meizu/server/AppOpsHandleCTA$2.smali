.class Lcom/meizu/server/AppOpsHandleCTA$2;
.super Ljava/lang/Object;
.source "AppOpsHandleCTA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AppOpsHandleCTA;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AppOpsHandleCTA;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/server/AppOpsHandleCTA;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AppOpsHandleCTA;
    .param p2, "val$remember"    # Landroid/widget/CheckBox;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandleCTA$2;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    iput-object p2, p0, Lcom/meizu/server/AppOpsHandleCTA$2;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA$2;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA$2;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    invoke-static {v0, p1, v2, v1, v2}, Lcom/meizu/server/AppOpsHandleCTA;->-wrap2(Lcom/meizu/server/AppOpsHandleCTA;Landroid/content/DialogInterface;ZZZ)V

    .line 259
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandleCTA$2;->this$0:Lcom/meizu/server/AppOpsHandleCTA;

    invoke-static {v0, p1, v2, v1, v1}, Lcom/meizu/server/AppOpsHandleCTA;->-wrap2(Lcom/meizu/server/AppOpsHandleCTA;Landroid/content/DialogInterface;ZZZ)V

    goto :goto_0
.end method
