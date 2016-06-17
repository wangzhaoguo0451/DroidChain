.class public final Laew;
.super Ladx;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ladx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Ladx;->a(Lorg/json/JSONObject;)V

    .line 36
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laew;->d:Ljava/lang/String;

    .line 40
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laew;->e:Ljava/lang/String;

    .line 43
    :cond_1
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 87
    const-string v0, "mini_ui_block"

    invoke-static {v0}, Lg;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Laew;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Laew;->d:Ljava/lang/String;

    new-instance v1, Laex;

    invoke-direct {v1, p0}, Laex;-><init>(Laew;)V

    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;Ladj;)V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Laew;->c:Ljava/lang/Object;

    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Laew;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Laew;->e:Ljava/lang/String;

    iput-object v0, p0, Laew;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, ""

    return-object v0
.end method
