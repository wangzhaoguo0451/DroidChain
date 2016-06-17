.class public Lcom/wandoujia/image/view/AsyncImageView;
.super Landroid/widget/ImageView;
.source "AsyncImageView.java"


# static fields
.field private static a:Ldbx;


# instance fields
.field private final b:Landroid/view/animation/AlphaAnimation;

.field private c:Ldaq;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field private g:I

.field private h:Landroid/os/AsyncTask$Status;

.field private i:Ldby;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    .line 30
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    .line 30
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    .line 30
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/image/view/AsyncImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->g:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;ZZJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 23
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Ldbu;

    invoke-direct {v0, p0, p1, p4, p5}, Ldbu;-><init>(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;J)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    :cond_3
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->LOCAL_IMAGE:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->g:I

    if-eqz v0, :cond_5

    new-instance v0, Ldbv;

    invoke-direct {v0, p0, p1, p4, p5}, Ldbv;-><init>(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;J)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p4, p5}, Lcom/wandoujia/image/view/AsyncImageView;->a(Landroid/graphics/Bitmap;J)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    if-eqz v0, :cond_0

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    if-eqz v0, :cond_0

    :cond_7
    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/os/AsyncTask$Status;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->g:I

    .line 113
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    invoke-virtual {v0}, Ldaq;->b()V

    .line 115
    iput-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    .line 117
    :cond_0
    invoke-direct {p0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 118
    return-void
.end method

.method public static setImageManagerHolder(Ldbx;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    sput-object p0, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    .line 63
    return-void
.end method

.method private setStatus(Landroid/os/AsyncTask$Status;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    if-ne v0, p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    invoke-virtual {v0}, Ldaq;->b()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    .line 131
    :cond_2
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->i:Ldby;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->i:Ldby;

    iget-object v0, v0, Ldby;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0, p1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;Landroid/graphics/Bitmap;)V

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    iput p2, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    .line 282
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->NETWORK:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 284
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 286
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iput p3, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    .line 349
    iput p2, p0, Lcom/wandoujia/image/view/AsyncImageView;->g:I

    .line 350
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->LOCAL_IMAGE:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 352
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 354
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getWidth()I

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getHeight()I

    move-result v1

    .line 149
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    if-nez v0, :cond_4

    .line 155
    :cond_3
    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    iget-object v0, v0, Ldaq;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    iget-object v0, v0, Ldaq;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    invoke-virtual {v0}, Ldaq;->b()V

    .line 166
    iget-boolean v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    if-eqz v0, :cond_5

    .line 167
    iget v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    .line 171
    :cond_5
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 172
    sget-object v0, Ldbw;->a:[I

    iget-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    invoke-virtual {v1}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ldbp;

    invoke-direct {v2, p0, p1, v0, v1}, Ldbp;-><init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V

    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v0}, Ldbx;->a()Ldaa;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ldaa;->a(Ljava/lang/String;Ldbd;II)Ldaq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v2}, Ldbx;->a()Ldaa;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    new-instance v4, Ldbq;

    invoke-direct {v4, p0, p1, v0, v1}, Ldbq;-><init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V

    invoke-virtual {v2, v3, v4}, Ldaa;->a(Ljava/lang/String;Ldbd;)Ldaq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    goto/16 :goto_0

    .line 180
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v2}, Ldbx;->a()Ldaa;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    new-instance v4, Ldbr;

    invoke-direct {v4, p0, p1, v0, v1}, Ldbr;-><init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V

    new-instance v0, Ldai;

    invoke-direct {v0, v2, v3}, Ldai;-><init>(Ldaa;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v0}, Ldaa;->a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    goto/16 :goto_0

    .line 183
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v2}, Ldbx;->a()Ldaa;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    new-instance v4, Ldbt;

    invoke-direct {v4, p0, p1, v0, v1}, Ldbt;-><init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V

    invoke-virtual {v2, v3, v4}, Ldaa;->b(Ljava/lang/String;Ldbd;)Ldaq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    goto/16 :goto_0

    .line 186
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v2}, Ldbx;->a()Ldaa;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    new-instance v4, Ldbs;

    invoke-direct {v4, p0, p1, v0, v1}, Ldbs;-><init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getHeight()I

    move-result v1

    new-instance v5, Ldaf;

    invoke-direct {v5, v2, v3, v0, v1}, Ldaf;-><init>(Ldaa;Ljava/lang/String;II)V

    invoke-virtual {v2, v3, v4, v5}, Ldaa;->a(Ljava/lang/String;Ldbd;Ldas;)Ldaq;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->c:Ldaq;

    goto/16 :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    iput p2, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    .line 296
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 297
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APP_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 298
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 300
    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    iput p2, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    .line 310
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APK_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 312
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 314
    return-void
.end method

.method public final d(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    iput p2, p0, Lcom/wandoujia/image/view/AsyncImageView;->d:I

    .line 324
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->e:Ljava/lang/String;

    .line 325
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->VIDEO_THUMBNAIL:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    iput-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->f:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 326
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setStatus(Landroid/os/AsyncTask$Status;)V

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 328
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->invalidate()V

    .line 88
    return-void
.end method

.method public getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wandoujia/image/view/AsyncImageView;->h:Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 81
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->a()V

    .line 74
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 75
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 94
    return-void
.end method

.method public setDefaultImmediately(Z)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->j:Z

    .line 203
    return-void
.end method

.method public setImageLoadedListener(Ldby;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/wandoujia/image/view/AsyncImageView;->i:Ldby;

    .line 238
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 242
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView;->a:Ldbx;

    invoke-interface {v0}, Ldbx;->a()Ldaa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldaa;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnStatusChangedListener$31c3d980(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    return-void
.end method

.method public setStaticImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/wandoujia/image/view/AsyncImageView;->b()V

    .line 271
    invoke-virtual {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    return-void
.end method

.method public setStaticImageResource(I)V
    .locals 0
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/wandoujia/image/view/AsyncImageView;->b()V

    .line 259
    invoke-virtual {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageResource(I)V

    .line 260
    return-void
.end method
