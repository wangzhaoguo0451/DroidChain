.class final Laac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Laaa;

.field private final synthetic b:Lcom/alipay/wandoujia/ra;


# direct methods
.method constructor <init>(Laaa;Lcom/alipay/wandoujia/ra;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laac;->a:Laaa;

    iput-object p2, p0, Laac;->b:Lcom/alipay/wandoujia/ra;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Laac;->a:Laaa;

    invoke-static {v0}, Laaa;->a(Laaa;)Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    move-result-object v0

    iget-object v1, p0, Laac;->b:Lcom/alipay/wandoujia/ra;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lcom/alipay/wandoujia/ra;)V

    .line 184
    return-void
.end method
