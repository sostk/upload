.class Lcom/android/internal/telephony/MzCallerInfo$1;
.super Landroid/os/Handler;
.source "MzCallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MzCallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MzCallerInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MzCallerInfo;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfo$1;->this$0:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 765
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 767
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

    .line 768
    .local v0, "listener":Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;
    if-eqz v0, :cond_0

    .line 769
    invoke-interface {v0}, Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;->onUpdateLocation()V

    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
