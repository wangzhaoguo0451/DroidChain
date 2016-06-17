.class public final Lgct;
.super Ljava/lang/Object;
.source "Tips.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Z

.field private c:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lgct;-><init>(Landroid/content/Context;IZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p2}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lgct;-><init>(Landroid/view/View;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgct;-><init>(Landroid/view/View;Z)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p2, p0, Lgct;->b:Z

    .line 35
    iput-object p1, p0, Lgct;->a:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lgct;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 39
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lgct;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lgct;->c:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 79
    invoke-static {p2, p3}, Lg;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 96
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lgct;->a:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setId(I)V

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    iget-boolean v1, p0, Lgct;->b:Z

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 91
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :goto_1
    iget-object v0, p0, Lgct;->a:Landroid/view/View;

    iget-object v1, p0, Lgct;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lgct;->a:Landroid/view/View;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
