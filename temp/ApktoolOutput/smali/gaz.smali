.class final Lgaz;
.super Lhhl;
.source "BaseSettingActivity.java"


# instance fields
.field private synthetic a:Lgay;


# direct methods
.method constructor <init>(Lgay;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lgaz;->a:Lgay;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lgaz;->a:Lgay;

    invoke-virtual {v0}, Lgay;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
