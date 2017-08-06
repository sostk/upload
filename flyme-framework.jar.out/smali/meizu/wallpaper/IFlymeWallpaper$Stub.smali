.class public abstract Lmeizu/wallpaper/IFlymeWallpaper$Stub;
.super Landroid/os/Binder;
.source "IFlymeWallpaper.java"

# interfaces
.implements Lmeizu/wallpaper/IFlymeWallpaper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/wallpaper/IFlymeWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/wallpaper/IFlymeWallpaper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.wallpaper.IFlymeWallpaper"

.field static final TRANSACTION_getLockWallpaper:I = 0x2

.field static final TRANSACTION_setLockWallpaper:I = 0x1

.field static final TRANSACTION_setSmartWallpaperTarget:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "meizu.wallpaper.IFlymeWallpaper"

    invoke-virtual {p0, p0, v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaper;
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
    const-string/jumbo v1, "meizu.wallpaper.IFlymeWallpaper"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/wallpaper/IFlymeWallpaper;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmeizu/wallpaper/IFlymeWallpaper;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmeizu/wallpaper/IFlymeWallpaper$Stub$Proxy;

    invoke-direct {v1, p0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "meizu.wallpaper.IFlymeWallpaper"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_1
    const-string/jumbo v4, "meizu.wallpaper.IFlymeWallpaper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 51
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_0
    return v5

    .line 57
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v4, "meizu.wallpaper.IFlymeWallpaper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaperCallback;

    move-result-object v1

    .line 67
    .local v1, "_arg0":Lmeizu/wallpaper/IFlymeWallpaperCallback;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->getLockWallpaper(Lmeizu/wallpaper/IFlymeWallpaperCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 69
    .restart local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    :goto_1
    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_2
    return v5

    .line 75
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 88
    .end local v1    # "_arg0":Lmeizu/wallpaper/IFlymeWallpaperCallback;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v4, "meizu.wallpaper.IFlymeWallpaper"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 92
    .restart local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_3
    return v5

    .line 98
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
