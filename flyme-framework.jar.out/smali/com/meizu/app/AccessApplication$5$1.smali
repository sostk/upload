.class Lcom/meizu/app/AccessApplication$5$1;
.super Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/app/AccessApplication$5;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/app/AccessApplication$5;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$5$1;->this$1:Lcom/meizu/app/AccessApplication$5;

    invoke-direct {p0}, Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccountNotLogin(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 307
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "handleAccountNotLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "ErrorMsg"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string/jumbo v0, "AccessApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 301
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$5$1;->this$1:Lcom/meizu/app/AccessApplication$5;

    iget-object v0, v0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0, p1}, Lcom/meizu/app/AccessApplication;->-wrap10(Lcom/meizu/app/AccessApplication;Landroid/os/Bundle;)V

    .line 300
    return-void
.end method
