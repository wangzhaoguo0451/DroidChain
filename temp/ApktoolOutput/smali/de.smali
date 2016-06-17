.class public final Lde;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# virtual methods
.method public final onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-interface {v0}, Ldd;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPlaybackPositionUpdate(J)V
    .locals 0
    .parameter

    .prologue
    .line 155
    return-void
.end method
