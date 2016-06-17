.class final Leau;
.super Ljava/lang/Object;
.source "GameLocalItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leay;

.field private synthetic b:Leat;


# direct methods
.method constructor <init>(Leat;Leay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Leau;->b:Leat;

    iput-object p2, p0, Leau;->a:Leay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v0

    iget-object v1, p0, Leau;->b:Leat;

    iget-object v1, v1, Leat;->a:Leax;

    invoke-interface {v1}, Leax;->j_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebb;->b(Ljava/lang/String;)I

    move-result v0

    .line 41
    if-lez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Ldxj;->a()Ldaa;

    move-result-object v1

    iget-object v2, p0, Leau;->b:Leat;

    iget-object v2, v2, Leat;->a:Leax;

    invoke-interface {v2}, Leax;->j_()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Leav;

    invoke-direct {v3, p0, v0}, Leav;-><init>(Leau;I)V

    invoke-virtual {v1, v2, v3}, Ldaa;->a(Ljava/lang/String;Ldbd;)Ldaq;

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Leau;->a:Leay;

    invoke-interface {v0}, Leay;->a()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    iget-object v1, p0, Leau;->b:Leat;

    iget-object v1, v1, Leat;->a:Leax;

    invoke-interface {v1}, Leax;->j_()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->game_icon_placehoder:I

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
