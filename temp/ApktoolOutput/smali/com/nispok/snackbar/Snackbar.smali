.class public Lcom/nispok/snackbar/Snackbar;
.super Lcom/nispok/snackbar/layouts/SnackbarLayout;
.source "Snackbar.java"


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:I

.field private C:I

.field private D:J

.field private E:Z

.field private F:Z

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/Point;

.field private J:Landroid/graphics/Point;

.field private K:Z

.field private L:Ljava/lang/Runnable;

.field public a:Lcom/nispok/snackbar/enums/SnackbarType;

.field public b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public c:Ljava/lang/CharSequence;

.field public d:Z

.field public e:Z

.field public f:Lbtk;

.field public g:Lbtk;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Landroid/app/Activity;

.field public l:Ljava/lang/Runnable;

.field private m:I

.field private n:I

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field private v:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/16 v0, -0x2710

    const/4 v1, 0x1

    .line 141
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/layouts/SnackbarLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    .line 77
    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->n:I

    .line 79
    sget-object v0, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 80
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    .line 85
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    .line 86
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->s:I

    .line 89
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->u:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 90
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->v:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 91
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->n:I

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->w:I

    .line 92
    iput-wide v4, p0, Lcom/nispok/snackbar/Snackbar;->z:J

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->B:I

    .line 102
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->C:I

    .line 103
    iput-boolean v1, p0, Lcom/nispok/snackbar/Snackbar;->d:Z

    .line 104
    iput-boolean v1, p0, Lcom/nispok/snackbar/Snackbar;->e:Z

    .line 105
    iput-wide v4, p0, Lcom/nispok/snackbar/Snackbar;->D:J

    .line 113
    iput-boolean v1, p0, Lcom/nispok/snackbar/Snackbar;->h:Z

    .line 117
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->i:Z

    .line 118
    iput-boolean v1, p0, Lcom/nispok/snackbar/Snackbar;->F:Z

    .line 119
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->j:Z

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->G:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->H:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->I:Landroid/graphics/Point;

    .line 123
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->J:Landroid/graphics/Point;

    .line 125
    new-instance v0, Lbsx;

    invoke-direct {v0, p0}, Lbsx;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lbsy;

    invoke-direct {v0, p0}, Lbsy;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->l:Ljava/lang/Runnable;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Lbtg;

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbtg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->addView(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method private static a(IF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 885
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static synthetic a(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->y:J

    return-wide p1
.end method

.method private static a(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 641
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 643
    invoke-virtual {p3}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    :goto_0
    return-object v0

    .line 645
    :cond_0
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 646
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 648
    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    if-ne p3, v1, :cond_1

    .line 649
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 651
    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 654
    :cond_2
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 655
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 656
    invoke-virtual {p3}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 659
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requires FrameLayout or RelativeLayout for the parent of Snackbar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lcom/nispok/snackbar/Snackbar;)Lbtk;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->g:Lbtk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, p0}, Lcom/nispok/snackbar/Snackbar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {v0}, Lix;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljt;

    move-result-object v1

    sget-object v2, Ljt;->a:Ljw;

    iget-object v1, v1, Ljt;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, p0}, Ljw;->a(Ljava/lang/Object;Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->j:Z

    if-eqz v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1094
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->j:Z

    .line 1096
    if-nez p1, :cond_1

    .line 1105
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->f()V

    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->u:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    if-ne v0, v2, :cond_2

    sget v0, Lcom/nispok/snackbar/R$anim;->sb__top_out:I

    :goto_1
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1111
    new-instance v1, Lbte;

    invoke-direct {v1, p0}, Lbte;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1128
    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1109
    :cond_2
    sget v0, Lcom/nispok/snackbar/R$anim;->sb__bottom_out:I

    goto :goto_1
.end method

.method public static synthetic b(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->z:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->j:Z

    return v0
.end method

.method public static synthetic c(Lcom/nispok/snackbar/Snackbar;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->E:Z

    return v0
.end method

.method public static synthetic d(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->x:J

    return-wide p1
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v0

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->E:Z

    return v0
.end method

.method public static synthetic e(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->z:J

    return-wide p1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/nispok/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1074
    return-void
.end method

.method public static synthetic e(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->h:Z

    return v0
.end method

.method public static synthetic f(Lcom/nispok/snackbar/Snackbar;)Lbtk;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->f:Lbtk;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->clearAnimation()V

    .line 1133
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1134
    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1137
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->i:Z

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->k:Landroid/app/Activity;

    .line 1143
    return-void
.end method

.method public static synthetic g(Lcom/nispok/snackbar/Snackbar;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nispok/snackbar/Snackbar;->a(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->d()Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcom/nispok/snackbar/Snackbar;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic j(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->y:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->x:J

    return-wide v0
.end method

.method public static synthetic l(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->z:J

    return-wide v0
.end method

.method public static synthetic m(Lcom/nispok/snackbar/Snackbar;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic n(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->c()Z

    move-result v0

    return v0
.end method

.method public static synthetic o(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->e()V

    return-void
.end method

.method public static synthetic p(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->f()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 341
    const v0, 0x7f020308

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->B:I

    .line 342
    return-object p0
.end method

.method public final a(I)Lcom/nispok/snackbar/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/nispok/snackbar/Snackbar;
    .locals 3
    .parameter

    .prologue
    .line 570
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->D:J

    .line 571
    return-object p0

    .line 570
    :cond_0
    iget-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->D:J

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;
    .locals 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->o:Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    .line 891
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1187
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->K:Z

    if-eqz v0, :cond_2

    .line 1189
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1190
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1191
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1192
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1202
    :goto_0
    iget-object v4, p0, Lcom/nispok/snackbar/Snackbar;->G:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    iput v3, v4, Landroid/graphics/Rect;->right:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v1, v6, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x800

    and-int/2addr v1, v6

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    const/16 v7, 0x200

    if-ne v6, v7, :cond_4

    :goto_2
    iget-object v6, p0, Lcom/nispok/snackbar/Snackbar;->H:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/nispok/snackbar/Snackbar;->J:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/nispok/snackbar/Snackbar;->I:Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-static {v5, v7}, Lbss;->b(Landroid/view/Display;Landroid/graphics/Point;)V

    invoke-static {v5, v8}, Lbss;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v0, v8, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->x:I

    if-ge v0, v5, :cond_5

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1204
    :cond_1
    :goto_3
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1205
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar;->G:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1206
    return-void

    .line 1195
    :cond_2
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1196
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1197
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->t:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1198
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->t:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 1202
    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget v0, v8, Landroid/graphics/Point;->y:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    if-ge v0, v5, :cond_1

    if-nez v1, :cond_6

    if-eqz v2, :cond_1

    :cond_6
    iget v0, v7, Landroid/graphics/Point;->y:I

    iget v1, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, v7, Landroid/graphics/Point;->y:I

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method public final b(I)Lcom/nispok/snackbar/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    return-object p0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->e:Z

    invoke-direct {p0, v0}, Lcom/nispok/snackbar/Snackbar;->a(Z)V

    .line 1087
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 909
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 910
    if-nez p1, :cond_7

    move v2, v4

    .line 911
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/nispok/snackbar/R$layout;->sb__template:I

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nispok/snackbar/layouts/SnackbarLayout;

    invoke-virtual {v1, v4}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    iget v5, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    :goto_1
    iput v3, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    sget v3, Lcom/nispok/snackbar/R$dimen;->sb__offset:I

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/nispok/snackbar/Snackbar;->t:I

    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->K:Z

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iget-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->K:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v2}, Lcom/nispok/snackbar/enums/SnackbarType;->getMinHeight()I

    move-result v2

    invoke-static {v2, v3}, Lcom/nispok/snackbar/Snackbar;->a(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v2}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result v2

    invoke-static {v2, v3}, Lcom/nispok/snackbar/Snackbar;->a(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMaxHeight(I)V

    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setBackgroundColor(I)V

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->u:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0, v11, v2, v3}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    move-object v5, v2

    :goto_2
    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->w:I

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->n:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->w:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v3, v8, :cond_a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_3
    sget v2, Lcom/nispok/snackbar/R$id;->sb__divider:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/nispok/snackbar/R$id;->sb__text:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->o:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v2, Lcom/nispok/snackbar/R$id;->sb__sub_text:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nispok/snackbar/Snackbar;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->s:I

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->s:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->q:Landroid/widget/TextView;

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->s:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v3}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v3}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    sget v2, Lcom/nispok/snackbar/R$id;->sb__action:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/nispok/snackbar/R$id;->sb__sub_action:I

    invoke-virtual {v1, v3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/nispok/snackbar/Snackbar;->A:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/nispok/snackbar/Snackbar;->B:I

    if-eq v8, v11, :cond_c

    :cond_2
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->requestLayout()V

    iget-object v8, p0, Lcom/nispok/snackbar/Snackbar;->A:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lcom/nispok/snackbar/Snackbar;->c:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/nispok/snackbar/Snackbar;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget v8, Lcom/nispok/snackbar/R$id;->sb__action_divider:I

    invoke-virtual {v1, v8}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lbsz;

    invoke-direct {v1, p0}, Lbsz;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->B:I

    if-eq v1, v11, :cond_3

    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->B:I

    invoke-virtual {v2, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_3
    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->C:I

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->m:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->C:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    new-instance v1, Lbta;

    invoke-direct {v1, p0}, Lbta;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v1}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_5
    invoke-virtual {p0, v4}, Lcom/nispok/snackbar/Snackbar;->setClickable(Z)V

    iget-boolean v1, p0, Lcom/nispok/snackbar/Snackbar;->F:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/nispok/snackbar/R$bool;->sb__is_swipeable:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lbtl;

    new-instance v2, Lbtn;

    invoke-direct {v2, p0}, Lbtn;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-direct {v1, p0, v2}, Lbtl;-><init>(Landroid/view/View;Lbtn;)V

    invoke-virtual {p0, v1}, Lcom/nispok/snackbar/Snackbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 912
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 913
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    move v1, v6

    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getElevation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/nispok/snackbar/Snackbar;->setElevation(F)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 910
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nispok/snackbar/R$bool;->sb__is_phone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move v2, v1

    goto/16 :goto_0

    .line 911
    :cond_8
    sget v3, Lcom/nispok/snackbar/R$color;->sb__background:I

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object v2, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    sget v2, Lcom/nispok/snackbar/R$dimen;->sb__min_width:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMinimumWidth(I)V

    sget v2, Lcom/nispok/snackbar/R$dimen;->sb__max_width:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMaxWidth(I)V

    sget v2, Lcom/nispok/snackbar/R$drawable;->sb__bg:I

    invoke-virtual {v1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, -0x2

    iget-object v5, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {v5}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result v5

    invoke-static {v5, v3}, Lcom/nispok/snackbar/Snackbar;->a(IF)I

    move-result v3

    iget-object v5, p0, Lcom/nispok/snackbar/Snackbar;->v:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0, v2, v3, v5}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    sget v3, Lcom/nispok/snackbar/R$id;->sb__action_divider:I

    invoke-virtual {v1, v3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 913
    :cond_d
    invoke-virtual {v0, p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->bringToFront()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_e
    iput-boolean v4, p0, Lcom/nispok/snackbar/Snackbar;->i:Z

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->k:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbtb;

    invoke-direct {v1, p0}, Lbtb;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->d:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->e()V

    .line 914
    :cond_f
    :goto_7
    return-void

    .line 913
    :cond_10
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->u:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    if-ne v0, v2, :cond_11

    sget v0, Lcom/nispok/snackbar/R$anim;->sb__top_in:I

    :goto_8
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lbtc;

    invoke-direct {v1, p0}, Lbtc;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_11
    sget v0, Lcom/nispok/snackbar/R$anim;->sb__bottom_in:I

    goto :goto_8
.end method

.method public final c(I)Lcom/nispok/snackbar/Snackbar;
    .locals 1
    .parameter

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getActionColor()I
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->C:I

    return v0
.end method

.method public getActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->A:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->r:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 1234
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->D:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->b:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->D:J

    goto :goto_0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->t:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->s:I

    return v0
.end method

.method public getType()Lcom/nispok/snackbar/enums/SnackbarType;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->a:Lcom/nispok/snackbar/enums/SnackbarType;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1147
    invoke-super {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->onDetachedFromWindow()V

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->i:Z

    .line 1151
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1157
    :cond_1
    return-void
.end method
