.class public abstract Lmeizu/statusbar/IFlymeStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IFlymeStatusBarService.java"

# interfaces
.implements Lmeizu/statusbar/IFlymeStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/statusbar/IFlymeStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.statusbar.IFlymeStatusBarService"

.field static final TRANSACTION_hideAlwaysTextAndIcon:I = 0x7

.field static final TRANSACTION_registerStatusBar:I = 0x3

.field static final TRANSACTION_releaseAndCloseHeadsUp:I = 0x4

.field static final TRANSACTION_setNotificationReplyingInfo:I = 0x5

.field static final TRANSACTION_setStatusBarColorTheme:I = 0x2

.field static final TRANSACTION_setStatusBarDarkTheme:I = 0x1

.field static final TRANSACTION_showAlwaysTextAndIcon:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p0, p0, v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "meizu.statusbar.IFlymeStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/statusbar/IFlymeStatusBarService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmeizu/statusbar/IFlymeStatusBarService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 42
    :sswitch_0
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v9

    .line 47
    :sswitch_1
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    .line 51
    .local v5, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 52
    .local v7, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v5, v7}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setStatusBarDarkTheme(ZZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v9

    .line 49
    .end local v5    # "_arg0":Z
    .end local v7    # "_arg1":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_0

    .line 51
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_1

    .line 58
    .end local v5    # "_arg0":Z
    .end local v7    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 63
    .restart local v7    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v7}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setStatusBarColorTheme(IZ)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v9

    .line 62
    .end local v7    # "_arg1":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_2

    .line 69
    .end local v0    # "_arg0":I
    .end local v7    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBar;

    move-result-object v4

    .line 72
    .local v4, "_arg0":Lmeizu/statusbar/IFlymeStatusBar;
    invoke-virtual {p0, v4}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->registerStatusBar(Lmeizu/statusbar/IFlymeStatusBar;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v9

    .line 78
    .end local v4    # "_arg0":Lmeizu/statusbar/IFlymeStatusBar;
    :sswitch_4
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->releaseAndCloseHeadsUp()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v9

    .line 85
    :sswitch_5
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 90
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 95
    :goto_3
    invoke-virtual {p0, v2, v6}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->setNotificationReplyingInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v9

    .line 93
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 101
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 104
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 109
    :goto_4
    invoke-virtual {p0, v1}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v9

    .line 107
    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 115
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v8, "meizu.statusbar.IFlymeStatusBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->hideAlwaysTextAndIcon(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v9

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
