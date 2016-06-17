.class final Laec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$c;


# instance fields
.field private final synthetic a:Lcom/alipay/android/mini/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/CustomEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laec;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Laec;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Laec;->a:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-static {v0}, Lafs;->a(Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 493
    return-void
.end method
