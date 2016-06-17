.class public final Lbtl;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/view/View;

.field private f:Lbtn;

.field private g:I

.field private h:F

.field private i:F

.field private j:Z

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lbtn;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lbtl;->g:I

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lbtl;->a:I

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lbtl;->b:I

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lbtl;->c:I

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbtl;->d:J

    .line 97
    iput-object p1, p0, Lbtl;->e:Landroid/view/View;

    .line 98
    iput-object p2, p0, Lbtl;->f:Lbtn;

    .line 100
    return-void
.end method

.method static synthetic a(Lbtl;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lbtl;->f:Lbtn;

    iget-object v1, p0, Lbtl;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbtn;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->g(Lcom/nispok/snackbar/Snackbar;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 105
    iget v0, p0, Lbtl;->m:F

    invoke-virtual {p2, v0, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 107
    iget v0, p0, Lbtl;->g:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 108
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lbtl;->g:I

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    :cond_1
    :goto_0
    return v2

    .line 114
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lbtl;->h:F

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lbtl;->i:F

    .line 116
    iget-object v0, p0, Lbtl;->f:Lbtn;

    invoke-virtual {v0, v1}, Lbtn;->a(Z)V

    .line 118
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    .line 119
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lbtl;->f:Lbtn;

    invoke-virtual {v0, v2}, Lbtn;->a(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lbtl;->h:F

    sub-float/2addr v0, v3

    .line 131
    iget-object v3, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 132
    iget-object v3, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 133
    iget-object v3, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 134
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 135
    iget-object v5, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 138
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lbtl;->g:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-boolean v6, p0, Lbtl;->j:Z

    if-eqz v6, :cond_5

    .line 140
    cmpl-float v0, v0, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 148
    :goto_1
    if-eqz v1, :cond_b

    .line 150
    iget-object v1, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_a

    iget v0, p0, Lbtl;->g:I

    int-to-float v0, v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v4, p0, Lbtl;->d:J

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbtm;

    invoke-direct {v1, p0}, Lbtm;-><init>(Lbtl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    :cond_2
    :goto_3
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 170
    iput-object v10, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    .line 172
    :cond_3
    iput v8, p0, Lbtl;->m:F

    .line 173
    iput v8, p0, Lbtl;->h:F

    .line 174
    iput v8, p0, Lbtl;->i:F

    .line 175
    iput-boolean v2, p0, Lbtl;->j:Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget v6, p0, Lbtl;->b:I

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_f

    iget v6, p0, Lbtl;->c:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_f

    cmpg-float v6, v5, v4

    if-gez v6, :cond_f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_f

    iget-boolean v4, p0, Lbtl;->j:Z

    if-eqz v4, :cond_f

    .line 145
    cmpg-float v3, v3, v8

    if-gez v3, :cond_6

    move v3, v1

    :goto_4
    cmpg-float v0, v0, v8

    if-gez v0, :cond_7

    move v0, v1

    :goto_5
    if-ne v3, v0, :cond_8

    move v0, v1

    .line 146
    :goto_6
    iget-object v3, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_9

    :goto_7
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_1

    :cond_6
    move v3, v2

    .line 145
    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_6

    :cond_9
    move v1, v2

    .line 146
    goto :goto_7

    .line 150
    :cond_a
    iget v0, p0, Lbtl;->g:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_2

    .line 160
    :cond_b
    iget-boolean v0, p0, Lbtl;->j:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v4, p0, Lbtl;->d:J

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 180
    :pswitch_2
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v4, p0, Lbtl;->d:J

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 189
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 190
    iput-object v10, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    .line 191
    iput v8, p0, Lbtl;->m:F

    .line 192
    iput v8, p0, Lbtl;->h:F

    .line 193
    iput v8, p0, Lbtl;->i:F

    .line 194
    iput-boolean v2, p0, Lbtl;->j:Z

    goto/16 :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lbtl;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lbtl;->h:F

    sub-float v3, v0, v3

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lbtl;->i:F

    sub-float/2addr v0, v4

    .line 206
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lbtl;->a:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    .line 207
    iput-boolean v1, p0, Lbtl;->j:Z

    .line 208
    cmpl-float v0, v3, v8

    if-lez v0, :cond_e

    iget v0, p0, Lbtl;->a:I

    :goto_8
    iput v0, p0, Lbtl;->k:I

    .line 210
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 211
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 215
    :cond_c
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 219
    iget-object v4, p0, Lbtl;->e:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 223
    :cond_d
    iget-boolean v0, p0, Lbtl;->j:Z

    if-eqz v0, :cond_1

    .line 224
    iput v3, p0, Lbtl;->m:F

    .line 225
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    iget v2, p0, Lbtl;->k:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    iget-object v0, p0, Lbtl;->e:Landroid/view/View;

    const/high16 v2, 0x4000

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lbtl;->g:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v9, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    move v2, v1

    .line 229
    goto/16 :goto_0

    .line 208
    :cond_e
    iget v0, p0, Lbtl;->a:I

    neg-int v0, v0

    goto :goto_8

    :cond_f
    move v0, v2

    move v1, v2

    goto/16 :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
