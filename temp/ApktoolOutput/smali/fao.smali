.class public final Lfao;
.super Ljava/lang/Object;
.source "ALUpgradeCellView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lfao;->b:Landroid/view/View;

    .line 25
    const v0, 0x7f0c0223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    const v0, 0x7f0c0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfao;->a:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lfao;
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v0, Lfao;

    const v1, 0x7f030086

    invoke-static {p0, v1}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lfao;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfao;->b:Landroid/view/View;

    return-object v0
.end method
