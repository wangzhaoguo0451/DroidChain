.class public final Legr;
.super Ljava/lang/Object;
.source "UninstallPopupWindow.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Legr;->d:I

    .line 32
    iput-object p1, p0, Legr;->e:Landroid/view/View;

    .line 33
    iput-object p2, p0, Legr;->a:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Legr;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Legr;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Legr;->c:Ljava/lang/String;

    .line 39
    iput p2, p0, Legr;->d:I

    .line 40
    return-object p0
.end method

.method public final a()V
    .locals 8

    .prologue
    const/4 v3, -0x2

    const/4 v6, 0x1

    .line 47
    iget-object v0, p0, Legr;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$layout;->popup_uninstall:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v3, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 51
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 52
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    iget-object v3, p0, Legr;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 56
    iget-object v3, p0, Legr;->e:Landroid/view/View;

    const/16 v4, 0x33

    const/4 v5, 0x0

    aget v5, v0, v5

    aget v0, v0, v6

    iget-object v6, p0, Legr;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Legr;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/wandoujia/launcher_base/R$dimen;->margin_huge:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 63
    iget-object v0, p0, Legr;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 64
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 65
    new-instance v0, Legs;

    invoke-direct {v0, p0, v2}, Legs;-><init>(Legr;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
