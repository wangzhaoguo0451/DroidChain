.class public final Ledx;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->tag_layout_id:I

    sput v0, Ledx;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Ledx;->a(Landroid/view/View;I)V

    .line 68
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Ledx;->a(Landroid/view/View;I)V

    .line 51
    return-object v0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    sget v0, Ledx;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    return-void
.end method
