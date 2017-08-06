.class Lcom/meizu/app/AccessApplication$5;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->handleForgetPasswordClick()V
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
    .line 285
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 288
    const-string/jumbo v3, "AccessApplication"

    const-string/jumbo v4, "onServiceConntected.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p2}, Lcom/meizu/account/validate/IMzAccountBusiness$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/account/validate/IMzAccountBusiness;

    move-result-object v2

    .line 291
    .local v2, "iMzAccountBusiness":Lcom/meizu/account/validate/IMzAccountBusiness;
    if-eqz v2, :cond_0

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "BUSINESS_NAME"

    const-string/jumbo v4, "validate_password"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v3, "PACKAGE_NAME"

    iget-object v4, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v4}, Lcom/meizu/app/AccessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v3, "Validate_Title"

    iget-object v4, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v4}, Lcom/meizu/app/AccessApplication;->-wrap1(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    new-instance v3, Lcom/meizu/app/AccessApplication$5$1;

    invoke-direct {v3, p0}, Lcom/meizu/app/AccessApplication$5$1;-><init>(Lcom/meizu/app/AccessApplication$5;)V

    invoke-interface {v2, v0, v3}, Lcom/meizu/account/validate/IMzAccountBusiness;->doBusiness(Landroid/os/Bundle;Lcom/meizu/account/validate/IMzAccountBusinessResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 323
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onServiceDisconntected.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$5;->this$0:Lcom/meizu/app/AccessApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->-set0(Lcom/meizu/app/AccessApplication;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 322
    return-void
.end method
