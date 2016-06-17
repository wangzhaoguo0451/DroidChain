.class final Lafi;
.super Ladj;
.source "SourceFile"


# instance fields
.field private synthetic a:Lafg;


# direct methods
.method constructor <init>(Lafg;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafi;->a:Lafg;

    .line 123
    invoke-direct {p0}, Ladj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lafi;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lafi;->a:Lafg;

    invoke-static {v0}, Lafg;->b(Lafg;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
