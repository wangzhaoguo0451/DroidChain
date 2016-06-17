.class final Lafu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$a;


# instance fields
.field private synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafu;->a:Lafs;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->b(Lafs;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lafu;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    iget-object v1, p0, Lafu;->a:Lafs;

    invoke-static {v1}, Lafs;->b(Lafs;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 193
    const-string v2, "mini_text_color_gray"

    invoke-static {v2}, Lg;->c(Ljava/lang/String;)I

    move-result v2

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setTextColor(I)V

    .line 196
    :cond_0
    return-void
.end method
