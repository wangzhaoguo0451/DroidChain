.class public Landroid/media/NoAudioFocusAudioManager;
.super Landroid/media/AudioManager;
.source "NoAudioFocusAudioManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
