.class public interface abstract Lmeizu/notification/INotificationFilterService;
.super Ljava/lang/Object;
.source "INotificationFilterService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/notification/INotificationFilterService$Stub;
    }
.end annotation


# virtual methods
.method public abstract decreaseScore(Lmeizu/notification/RankingDaily;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRankingScoreBase(Ljava/lang/String;II)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract increaseScore(Lmeizu/notification/RankingDaily;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interceptNotification(Landroid/service/notification/IStatusBarNotificationHolder;ZZ)Lmeizu/notification/FilterResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
