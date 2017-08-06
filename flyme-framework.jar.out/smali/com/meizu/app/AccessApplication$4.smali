.class Lcom/meizu/app/AccessApplication$4;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->initCancelText()V
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
    .line 242
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$4;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-wrap4(Lcom/meizu/app/AccessApplication;)V

    .line 244
    return-void
.end method
