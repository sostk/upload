.class public abstract Lmeizu/notification/INotificationFilterService$Stub;
.super Landroid/os/Binder;
.source "INotificationFilterService.java"

# interfaces
.implements Lmeizu/notification/INotificationFilterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/notification/INotificationFilterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/notification/INotificationFilterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.notification.INotificationFilterService"

.field static final TRANSACTION_decreaseScore:I = 0x3

.field static final TRANSACTION_getRankingScoreBase:I = 0x4

.field static final TRANSACTION_increaseScore:I = 0x2

.field static final TRANSACTION_interceptNotification:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "meizu.notification.INotificationFilterService"

    invoke-virtual {p0, p0, v0}, Lmeizu/notification/INotificationFilterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/notification/INotificationFilterService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "meizu.notification.INotificationFilterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/notification/INotificationFilterService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmeizu/notification/INotificationFilterService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmeizu/notification/INotificationFilterService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmeizu/notification/INotificationFilterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "meizu.notification.INotificationFilterService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "meizu.notification.INotificationFilterService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    .line 56
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    .line 57
    .local v6, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v4, v6}, Lmeizu/notification/INotificationFilterService$Stub;->interceptNotification(Landroid/service/notification/IStatusBarNotificationHolder;ZZ)Lmeizu/notification/FilterResult;

    move-result-object v8

    .line 58
    .local v8, "_result":Lmeizu/notification/FilterResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v8, :cond_2

    .line 60
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/4 v9, 0x1

    invoke-virtual {v8, p3, v9}, Lmeizu/notification/FilterResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    :goto_2
    const/4 v9, 0x1

    return v9

    .line 54
    .end local v4    # "_arg1":Z
    .end local v6    # "_arg2":Z
    .end local v8    # "_result":Lmeizu/notification/FilterResult;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_0

    .line 56
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Z
    goto :goto_1

    .line 64
    .restart local v8    # "_result":Lmeizu/notification/FilterResult;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 70
    .end local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v4    # "_arg1":Z
    .end local v6    # "_arg2":Z
    .end local v8    # "_result":Lmeizu/notification/FilterResult;
    :sswitch_2
    const-string/jumbo v9, "meizu.notification.INotificationFilterService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 73
    sget-object v9, Lmeizu/notification/RankingDaily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    .line 78
    :goto_3
    invoke-virtual {p0, v2}, Lmeizu/notification/INotificationFilterService$Stub;->increaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v7

    .line 79
    .local v7, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    const/4 v9, 0x1

    return v9

    .line 76
    .end local v7    # "_result":F
    :cond_3
    const/4 v2, 0x0

    .local v2, "_arg0":Lmeizu/notification/RankingDaily;
    goto :goto_3

    .line 85
    .end local v2    # "_arg0":Lmeizu/notification/RankingDaily;
    :sswitch_3
    const-string/jumbo v9, "meizu.notification.INotificationFilterService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 88
    sget-object v9, Lmeizu/notification/RankingDaily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    .line 93
    :goto_4
    invoke-virtual {p0, v2}, Lmeizu/notification/INotificationFilterService$Stub;->decreaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v7

    .line 94
    .restart local v7    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    const/4 v9, 0x1

    return v9

    .line 91
    .end local v7    # "_result":F
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lmeizu/notification/RankingDaily;
    goto :goto_4

    .line 100
    .end local v2    # "_arg0":Lmeizu/notification/RankingDaily;
    :sswitch_4
    const-string/jumbo v9, "meizu.notification.INotificationFilterService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .local v5, "_arg2":I
    invoke-virtual {p0, v1, v3, v5}, Lmeizu/notification/INotificationFilterService$Stub;->getRankingScoreBase(Ljava/lang/String;II)F

    move-result v7

    .line 108
    .restart local v7    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    const/4 v9, 0x1

    return v9

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
