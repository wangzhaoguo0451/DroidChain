.class final Lezd;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "ALUpgradeCell.java"


# instance fields
.field private synthetic a:Lezb;


# direct methods
.method constructor <init>(Lezb;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lezd;->a:Lezb;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lezd;->a:Lezb;

    invoke-static {v0}, Lezb;->a(Lezb;)Lfao;

    move-result-object v0

    iget-object v0, v0, Lfao;->a:Landroid/widget/TextView;

    invoke-static {}, Lezb;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
