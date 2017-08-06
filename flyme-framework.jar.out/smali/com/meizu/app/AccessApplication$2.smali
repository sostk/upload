.class Lcom/meizu/app/AccessApplication$2;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "AccessApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/app/AccessApplication;
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
    .line 912
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 2
    .param p1, "acquireInfo"    # I

    .prologue
    .line 953
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onAuthenticationAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x4

    const/4 v4, -0x1

    .line 935
    const-string/jumbo v0, "AccessApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError---> helpMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",helpString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 937
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/meizu/app/AccessApplication;->-set1(Lcom/meizu/app/AccessApplication;I)I

    .line 941
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    .line 943
    iget-object v2, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->-get4(Lcom/meizu/app/AccessApplication;)I

    move-result v2

    .line 942
    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 946
    const/4 v3, 0x3

    .line 945
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .prologue
    .line 916
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 918
    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 917
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 930
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onAuthenticationHelp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    const/4 v3, 0x1

    .line 923
    const-string/jumbo v0, "AccessApplication"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v0}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->-get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;

    move-result-object v1

    .line 925
    const/4 v2, 0x2

    .line 924
    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 922
    return-void
.end method
