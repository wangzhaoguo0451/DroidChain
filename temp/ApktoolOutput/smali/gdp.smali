.class public final Lgdp;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field private static b:Lgdp;


# instance fields
.field private a:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static declared-synchronized a()Lgdp;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lgdp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgdp;->b:Lgdp;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lgdp;

    invoke-direct {v0}, Lgdp;-><init>()V

    sput-object v0, Lgdp;->b:Lgdp;

    .line 22
    :cond_0
    sget-object v0, Lgdp;->b:Lgdp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .parameter

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgdp;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "icons.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lgdp;->a:Landroid/graphics/Typeface;

    .line 31
    :cond_0
    iget-object v0, p0, Lgdp;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
