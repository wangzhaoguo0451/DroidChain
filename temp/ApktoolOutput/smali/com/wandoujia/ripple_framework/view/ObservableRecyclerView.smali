.class public Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;
.super Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;
.source "ObservableRecyclerView.java"


# instance fields
.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lup;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lhmr;

.field private z:Lup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 46
    new-instance v0, Lhmq;

    invoke-direct {v0, p0}, Lhmq;-><init>(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->z:Lup;

    .line 75
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->n()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 46
    new-instance v0, Lhmq;

    invoke-direct {v0, p0}, Lhmq;-><init>(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->z:Lup;

    .line 80
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->n()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 46
    new-instance v0, Lhmq;

    invoke-direct {v0, p0}, Lhmq;-><init>(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->z:Lup;

    .line 85
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->n()V

    .line 86
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->v:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->q:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->u:I

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->w:I

    return p1
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->x:I

    return p1
.end method

.method private n()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->q:Ljava/util/List;

    .line 247
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 249
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->z:Lup;

    invoke-super {p0, v0}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->setOnScrollListener(Lup;)V

    .line 250
    return-void
.end method


# virtual methods
.method public final a(Lup;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public getRecyclerViewScrollX()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->v:I

    return v0
.end method

.method public getRecyclerViewScrollY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->u:I

    return v0
.end method

.method public getScrollItemIndex()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->w:I

    return v0
.end method

.method public getScrollItemOffset()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->x:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->onAttachedToWindow()V

    .line 255
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 256
    :goto_0
    if-eqz v0, :cond_0

    .line 257
    instance-of v1, v0, Lhni;

    if-eqz v1, :cond_1

    .line 258
    check-cast v0, Lhni;

    invoke-interface {v0, p0}, Lhni;->setAssociatedRecyclerView(Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;)V

    .line 263
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v7, 0x3f00

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getLayoutManager()Luo;

    move-result-object v0

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getLayoutManager()Luo;

    move-result-object v3

    invoke-virtual {v3}, Luo;->e()Z

    move-result v3

    .line 114
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getScrollState()I

    move-result v4

    .line 115
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 116
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 118
    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 155
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    return v1

    .line 120
    :pswitch_1
    invoke-static {p1, v1}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    move v0, v1

    .line 124
    goto :goto_0

    .line 127
    :pswitch_2
    invoke-static {p1, v6}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 128
    invoke-static {p1, v6}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    .line 129
    invoke-static {p1, v6}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    move v0, v1

    .line 130
    goto :goto_0

    .line 133
    :pswitch_3
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    invoke-static {p1, v5}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 134
    if-gez v5, :cond_3

    .line 135
    const-string v0, "ObservableRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_3
    invoke-static {p1, v5}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 141
    invoke-static {p1, v5}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 142
    if-eq v4, v2, :cond_0

    .line 143
    iget v4, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    sub-int v4, v6, v4

    .line 144
    iget v6, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    sub-int/2addr v5, v6

    .line 145
    if-eqz v0, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v0, v6, :cond_4

    move v0, v2

    .line 148
    :goto_2
    if-eqz v3, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v0, v2

    .line 149
    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->v:I

    .line 221
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->u:I

    .line 222
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->y:Lhmr;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->y:Lhmr;

    iget-object v0, v0, Lhmr;->a:Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;

    iget-boolean v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->m:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->m()V

    .line 225
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f00

    .line 160
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getLayoutManager()Luo;

    move-result-object v1

    invoke-virtual {v1}, Luo;->d()Z

    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getLayoutManager()Luo;

    move-result-object v2

    invoke-virtual {v2}, Luo;->e()Z

    move-result v2

    .line 162
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 163
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 164
    packed-switch v3, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/wandoujia/nirvana/framework/ui/recycler/NirvanaRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 167
    :pswitch_1
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-static {p1, v4}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    .line 175
    invoke-static {p1, v4}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    .line 176
    invoke-static {p1, v4}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    goto :goto_0

    .line 181
    :pswitch_3
    iget v3, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    invoke-static {p1, v3}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 182
    if-gez v3, :cond_1

    .line 183
    const-string v1, "ObservableRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :cond_1
    invoke-static {p1, v3}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 189
    invoke-static {p1, v3}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 190
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->s:I

    sub-int/2addr v4, v5

    .line 191
    iget v5, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->t:I

    sub-int/2addr v3, v5

    .line 192
    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 196
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 197
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 199
    :cond_4
    const-string v1, "ObservableRecyclerView"

    const-string v2, "touch move false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnLayoutListener(Lhmr;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->y:Lhmr;

    .line 235
    return-void
.end method

.method public final setOnScrollListener(Lup;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use addOnScrollListener instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
