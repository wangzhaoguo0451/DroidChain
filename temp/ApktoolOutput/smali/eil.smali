.class final Leil;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "AppButtonSelector.java"


# instance fields
.field private synthetic a:Leik;


# direct methods
.method constructor <init>(Leik;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Leil;->a:Leik;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->c:Leiu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    invoke-virtual {v1}, Leik;->b()Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    invoke-virtual {v1}, Leik;->b()Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    iget-object v1, v1, Leik;->d:Leiw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    invoke-virtual {v1, p1}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    invoke-virtual {v1}, Leik;->a()Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
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
    .line 155
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v1, v0, Leik;->c:Leiu;

    if-eqz v1, :cond_0

    iget-object v1, v0, Leik;->c:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v1, :cond_0

    iget-object v1, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v2, v0, Leik;->c:Leiu;

    invoke-interface {v2}, Leiu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    iget-object v1, v1, Leik;->d:Leiw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Leil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Leil;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leil;->a:Leik;

    invoke-virtual {v1, p1}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method
