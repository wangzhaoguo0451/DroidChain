.class public Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;
.super Landroid/widget/RelativeLayout;
.source "SimplePlayerControllerView.java"

# interfaces
.implements Lgyw;


# instance fields
.field private a:Z

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field public g:Z

.field public h:Lgyp;

.field public i:Landroid/view/animation/Animation;

.field public j:Landroid/view/animation/Animation;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/SeekBar;

.field private n:Z

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    .line 41
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Lgyq;

    invoke-direct {v0, p0}, Lgyq;-><init>(Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->t:Landroid/view/animation/Animation$AnimationListener;

    .line 76
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    .line 41
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Lgyq;

    invoke-direct {v0, p0}, Lgyq;-><init>(Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->t:Landroid/view/animation/Animation$AnimationListener;

    .line 81
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    .line 41
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Lgyq;

    invoke-direct {v0, p0}, Lgyq;-><init>(Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->t:Landroid/view/animation/Animation$AnimationListener;

    .line 86
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g()V

    .line 87
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getLayoutResourceId()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a()V

    .line 92
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->o:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040028

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->r:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->r:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->t:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->j:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->i:Landroid/view/animation/Animation;

    .line 93
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0c01ab

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b:Landroid/widget/RelativeLayout;

    .line 101
    const v0, 0x7f0c0244

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0c01ac

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->d:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->f:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0c0243

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0c0245

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->k:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c0246

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->l:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c0247

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    .line 108
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lgys;

    invoke-direct {v1}, Lgys;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lgyt;

    invoke-direct {v1}, Lgyt;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    .line 185
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->g:Z

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    const v1, 0x7f020443

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 222
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    const v1, 0x7f020446

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 227
    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f03022d

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 142
    return-object p0
.end method

.method public setBufferPercent(I)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 237
    return-void
.end method

.method public setCanDragSeekBar(Z)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method public setCanPlay(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->n:Z

    goto :goto_0
.end method

.method public setCurrentPlayPercent(I)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 232
    return-void
.end method

.method public setCurrentTime(I)V
    .locals 4
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->k:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->k:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTimeInMinutes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMediaPlayerController(Lgyp;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->h:Lgyp;

    .line 267
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->e:Landroid/widget/ImageView;

    new-instance v1, Lgyv;

    invoke-direct {v1, p1}, Lgyv;-><init>(Lgyp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    return-void
.end method

.method public setPlayerExitListener(Lgyl;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->d:Landroid/widget/ImageView;

    new-instance v1, Lgyu;

    invoke-direct {v1, p1}, Lgyu;-><init>(Lgyl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setTotalTime(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 250
    const v0, 0x36ee80

    div-int v0, p1, v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a:Z

    .line 253
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->l:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTimeInMinutes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    return-void

    .line 254
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 255
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a:Z

    .line 256
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->l:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a:Z

    .line 259
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->l:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
