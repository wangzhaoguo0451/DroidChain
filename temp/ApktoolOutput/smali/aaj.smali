.class public final Laaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laaj;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Laaj;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 228
    return-void
.end method
