.class public final Lze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/TransContainer;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/alipay/wandoujia/ra;

.field private final synthetic g:Lcom/alipay/wandoujia/ra;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/TransContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/ra;Lcom/alipay/wandoujia/ra;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lze;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    iput-object p2, p0, Lze;->b:Ljava/lang/String;

    iput-object p3, p0, Lze;->c:Ljava/lang/String;

    iput-object p4, p0, Lze;->d:Ljava/lang/String;

    iput-object p5, p0, Lze;->e:Ljava/lang/String;

    iput-object p6, p0, Lze;->f:Lcom/alipay/wandoujia/ra;

    iput-object p7, p0, Lze;->g:Lcom/alipay/wandoujia/ra;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lze;)Lcom/alipay/android/mini/window/sdk/TransContainer;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lze;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lze;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/TransContainer;->a(Lcom/alipay/android/mini/window/sdk/TransContainer;)V

    .line 159
    new-instance v0, Lxo;

    .line 160
    iget-object v1, p0, Lze;->a:Lcom/alipay/android/mini/window/sdk/TransContainer;

    .line 159
    invoke-direct {v0, v1}, Lxo;-><init>(Landroid/content/Context;)V

    .line 161
    iget-object v1, p0, Lze;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "mini_error_title_default"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-virtual {v0, v1}, Lxo;->a(I)Lxo;

    .line 167
    :goto_0
    iget-object v1, p0, Lze;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxo;->a(Ljava/lang/CharSequence;)Lxo;

    .line 168
    iget-object v1, p0, Lze;->d:Ljava/lang/String;

    .line 169
    new-instance v2, Lzf;

    iget-object v3, p0, Lze;->f:Lcom/alipay/wandoujia/ra;

    invoke-direct {v2, p0, v3}, Lzf;-><init>(Lze;Lcom/alipay/wandoujia/ra;)V

    .line 168
    invoke-virtual {v0, v1, v2}, Lxo;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;

    .line 177
    iget-object v1, p0, Lze;->e:Ljava/lang/String;

    .line 178
    new-instance v2, Lzg;

    iget-object v3, p0, Lze;->g:Lcom/alipay/wandoujia/ra;

    invoke-direct {v2, p0, v3}, Lzg;-><init>(Lze;Lcom/alipay/wandoujia/ra;)V

    .line 177
    invoke-virtual {v0, v1, v2}, Lxo;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;

    .line 186
    invoke-virtual {v0}, Lxo;->a()Lxn;

    .line 187
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lze;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxo;->b(Ljava/lang/CharSequence;)Lxo;

    goto :goto_0
.end method
