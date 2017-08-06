.class Lcom/meizu/app/AccessApplication$9;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->initEmergencyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/app/AccessApplication;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 867
    .local v0, "id":I
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_cancel:I

    if-ne v0, v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_forget_pwd:I

    if-ne v0, v1, :cond_2

    .line 870
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-wrap4(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0

    .line 871
    :cond_2
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_dialer:I

    if-ne v0, v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$9;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-wrap5(Lcom/meizu/app/AccessApplication;)V

    goto :goto_0
.end method
