.class public interface abstract Lcom/android/internal/statusbar/FlymeExtIStatusBarService;
.super Ljava/lang/Object;
.source "FlymeExtIStatusBarService.java"


# static fields
.field public static final EXT_FIRST_CALL_TRASACTION:I = 0x2711

.field public static final NOTIFICATION_CLEAR_FOR_REASON_TRASACTION:I = 0x2712


# virtual methods
.method public abstract onNotificationClearForReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
