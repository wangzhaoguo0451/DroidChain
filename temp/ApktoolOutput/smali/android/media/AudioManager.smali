.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = null

.field public static final AUDIOFOCUS_GAIN:I = 0x0

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x4

.field public static final AUDIOFOCUS_LOSS:I = 0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = 0x3

.field public static final STREAM_MUSIC:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Landroid/media/AudioManager;->ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
