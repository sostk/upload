.class public abstract Lmeizu/statusbar/IFlymeStatusBar$Stub;
.super Landroid/os/Binder;
.source "IFlymeStatusBar.java"

# interfaces
.implements Lmeizu/statusbar/IFlymeStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/statusbar/IFlymeStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/statusbar/IFlymeStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.statusbar.IFlymeStatusBar"

.field static final TRANSACTION_hideAlwaysTextAndIcon:I = 0x6

.field static final TRANSACTION_releaseAndCloseHeadsUp:I = 0x3

.field static final TRANSACTION_setNotificationReplyingInfo:I = 0x4

.field static final TRANSACTION_setStatusBarColorTheme:I = 0x2

.field static final TRANSACTION_setStatusBarDarkTheme:I = 0x1

.field static final TRANSACTION_showAlwaysTextAndIcon:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p0, p0, v0}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBar;
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
    const-string/jumbo v1, "meizu.statusbar.IFlymeStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/statusbar/IFlymeStatusBar;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmeizu/statusbar/IFlymeStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmeizu/statusbar/IFlymeStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lmeizu/statusbar/IFlymeStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 42
    :sswitch_0
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v6

    .line 47
    :sswitch_1
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 51
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 52
    .local v4, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v3, v4}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->setStatusBarDarkTheme(ZZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v6

    .line 49
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_1

    .line 58
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 63
    .restart local v4    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v4}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->setStatusBarColorTheme(IZ)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v6

    .line 62
    .end local v4    # "_arg1":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_2

    .line 69
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->releaseAndCloseHeadsUp()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v6

    .line 76
    :sswitch_4
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 84
    :goto_3
    invoke-virtual {p0, v1}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->setNotificationReplyingInfo(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v6

    .line 82
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 90
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 98
    :goto_4
    invoke-virtual {p0, v1}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v6

    .line 96
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 104
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v5, "meizu.statusbar.IFlymeStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmeizu/statusbar/IFlymeStatusBar$Stub;->hideAlwaysTextAndIcon(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v6

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
