.class public Landroid/support/v7/internal/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/reflect/Field;

.field private g:Lqj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 48
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 49
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 50
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 51
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 69
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    .line 70
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method public drawableStateChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 96
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    if-eqz p1, :cond_1

    new-instance v0, Lqj;

    invoke-direct {v0, p1}, Lqj;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Lqj;

    .line 79
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Lqj;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 86
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 89
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 90
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectorEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Lqj;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Lqj;

    iput-boolean p1, v0, Lqj;->a:Z

    .line 335
    :cond_0
    return-void
.end method
