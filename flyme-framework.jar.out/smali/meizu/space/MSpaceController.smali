.class public interface abstract Lmeizu/space/MSpaceController;
.super Ljava/lang/Object;
.source "MSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/space/MSpaceController$MSpaceMode;,
        Lmeizu/space/MSpaceController$MSpaceState;,
        Lmeizu/space/MSpaceController$OnChangeListen;
    }
.end annotation


# virtual methods
.method public abstract addOnChangeListen(Lmeizu/space/MSpaceController$OnChangeListen;)V
.end method

.method public abstract getMSpaceModeState(Lmeizu/space/MSpaceController$MSpaceMode;)Lmeizu/space/MSpaceController$MSpaceState;
.end method

.method public abstract isChildrenMode()Z
.end method

.method public abstract isPrivacyPackage(Ljava/lang/String;I)Z
.end method

.method public abstract isSilenceNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z
.end method

.method public abstract removeOnChangeListen(Lmeizu/space/MSpaceController$OnChangeListen;)V
.end method
