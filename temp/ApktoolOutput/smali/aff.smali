.class final Laff;
.super Ladj;
.source "SourceFile"


# instance fields
.field private synthetic a:Lafe;

.field private final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lafe;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laff;->a:Lafe;

    iput-object p2, p0, Laff;->b:Landroid/view/ViewGroup;

    .line 149
    invoke-direct {p0}, Ladj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Laff;->a:Lafe;

    invoke-static {v0}, Lafe;->a(Lafe;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Laff;->a:Lafe;

    invoke-static {v0}, Lafe;->a(Lafe;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Laff;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Laff;->a:Lafe;

    invoke-static {v0}, Lafe;->a(Lafe;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Laff;->a:Lafe;

    invoke-static {v0}, Lafe;->a(Lafe;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Laff;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
