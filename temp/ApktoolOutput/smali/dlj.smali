.class final Ldlj;
.super Landroid/text/style/ClickableSpan;
.source "DetailAppInfoPresenter.java"


# instance fields
.field private synthetic a:Ldlg;


# direct methods
.method constructor <init>(Ldlg;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Ldlj;->a:Ldlg;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Ldlj;->a:Ldlg;

    invoke-virtual {v0}, Lerg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Ldwk;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Ldlj;->a:Ldlg;

    invoke-virtual {v0}, Ldlg;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    return-void
.end method
