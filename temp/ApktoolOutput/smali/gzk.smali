.class public final Lgzk;
.super Ljava/lang/Object;
.source "CameraManager.java"


# instance fields
.field private final a:Lgzi;

.field private b:Landroid/hardware/Camera;

.field private c:Lgzg;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Lgzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lgzk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lgzi;

    invoke-direct {v0, p1}, Lgzi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgzk;->a:Lgzi;

    .line 63
    new-instance v0, Lgzm;

    iget-object v1, p0, Lgzk;->a:Lgzi;

    invoke-direct {v0, v1}, Lgzm;-><init>(Lgzi;)V

    iput-object v0, p0, Lgzk;->j:Lgzm;

    .line 64
    return-void
.end method

.method private declared-synchronized a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgzk;->f:Z

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lgzk;->a:Lgzi;

    iget-object v0, v0, Lgzi;->b:Landroid/graphics/Point;

    .line 266
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 267
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 269
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 270
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 272
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 273
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 274
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, p1

    add-int v4, v0, p2

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lgzk;->d:Landroid/graphics/Rect;

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calculated manual framing rect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgzk;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lgzk;->e:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_2
    :try_start_1
    iput p1, p0, Lgzk;->h:I

    .line 279
    iput p2, p0, Lgzk;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lgzk;->d:Landroid/graphics/Rect;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lgzk;->e:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/os/Handler;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    .line 187
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lgzk;->g:Z

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lgzk;->j:Lgzm;

    invoke-virtual {v1, p1, p2}, Lgzm;->a(Landroid/os/Handler;I)V

    .line 189
    iget-object v1, p0, Lgzk;->j:Lgzm;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    .line 74
    if-nez v0, :cond_3

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 78
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    :try_start_1
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 85
    :goto_1
    if-nez v0, :cond_1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera failed to open: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 93
    :cond_1
    if-nez v0, :cond_2

    .line 94
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 96
    :cond_2
    iput-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    :cond_3
    move-object v2, v0

    .line 99
    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 101
    iget-boolean v0, p0, Lgzk;->f:Z

    if-nez v0, :cond_4

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgzk;->f:Z

    .line 103
    iget-object v3, p0, Lgzk;->a:Lgzi;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iget-object v0, v3, Lgzi;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_5

    :goto_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v3, Lgzi;->b:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lgzi;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lgzi;->b:Landroid/graphics/Point;

    invoke-static {v4, v0}, Lgzi;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, v3, Lgzi;->c:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lgzi;->c:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    iget v0, p0, Lgzk;->h:I

    if-lez v0, :cond_4

    iget v0, p0, Lgzk;->i:I

    if-lez v0, :cond_4

    .line 105
    iget v0, p0, Lgzk;->h:I

    iget v1, p0, Lgzk;->i:I

    invoke-direct {p0, v0, v1}, Lgzk;->a(II)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lgzk;->h:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lgzk;->i:I

    .line 110
    :cond_4
    iget-object v0, p0, Lgzk;->a:Lgzi;

    invoke-virtual {v0, v2}, Lgzi;->a(Landroid/hardware/Camera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :cond_5
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    .line 136
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lgzk;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgzk;->g:Z

    .line 140
    new-instance v0, Lgzg;

    iget-object v1, p0, Lgzk;->b:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lgzg;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lgzk;->c:Lgzg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgzk;->c:Lgzg;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lgzk;->c:Lgzg;

    invoke-virtual {v0}, Lgzg;->b()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lgzk;->c:Lgzg;

    .line 155
    :cond_0
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lgzk;->g:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lgzk;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 157
    iget-object v0, p0, Lgzk;->j:Lgzm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgzm;->a(Landroid/os/Handler;I)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgzk;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x258

    const/16 v2, 0x190

    const/16 v1, 0xf0

    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lgzk;->d:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 202
    iget-object v4, p0, Lgzk;->b:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 205
    :cond_1
    :try_start_1
    iget-object v4, p0, Lgzk;->a:Lgzi;

    iget-object v4, v4, Lgzi;->b:Landroid/graphics/Point;

    .line 206
    if-eqz v4, :cond_0

    .line 210
    iget v0, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 211
    if-ge v0, v1, :cond_5

    move v3, v1

    .line 216
    :cond_2
    :goto_1
    iget v0, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 217
    if-ge v0, v1, :cond_6

    move v0, v1

    .line 222
    :cond_3
    :goto_2
    iget v1, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 223
    iget v2, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 224
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lgzk;->d:Landroid/graphics/Rect;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calculated framing rect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgzk;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    :cond_4
    iget-object v0, p0, Lgzk;->d:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :cond_5
    if-gt v0, v3, :cond_2

    move v3, v0

    goto :goto_1

    .line 219
    :cond_6
    if-le v0, v2, :cond_3

    move v0, v2

    .line 220
    goto :goto_2

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgzk;->e:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 236
    invoke-virtual {p0}, Lgzk;->d()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 237
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 240
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 241
    iget-object v1, p0, Lgzk;->a:Lgzi;

    iget-object v1, v1, Lgzi;->c:Landroid/graphics/Point;

    .line 242
    iget-object v3, p0, Lgzk;->a:Lgzi;

    iget-object v3, v3, Lgzi;->b:Landroid/graphics/Point;

    .line 243
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 247
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 248
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 249
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 250
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 251
    iput-object v2, p0, Lgzk;->e:Landroid/graphics/Rect;

    .line 253
    :cond_2
    iget-object v0, p0, Lgzk;->e:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
