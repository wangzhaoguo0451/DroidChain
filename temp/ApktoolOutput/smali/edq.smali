.class final Ledq;
.super Ljava/lang/Object;
.source "LauncherIconUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ledr;


# direct methods
.method constructor <init>(Ledr;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Ledq;->a:Ledr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ledn;->c()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_gl_no_games:I

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->launcher_icon_base:I

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    iget-object v1, p0, Ledq;->a:Ledr;

    invoke-interface {v1, v0}, Ledr;->a(Landroid/graphics/Bitmap;)V

    .line 166
    return-void
.end method
