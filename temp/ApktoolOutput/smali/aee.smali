.class public final Laee;
.super Laez;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Laez;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 32
    const-string v0, "mini_ui_line"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Laez;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Laez;->k:Ljava/lang/String;

    new-instance v1, Laef;

    invoke-direct {v1, p2}, Laef;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;Ladj;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
