.class final Lein;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Lega;


# instance fields
.field private synthetic a:Leik;


# direct methods
.method constructor <init>(Leik;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lein;->a:Leik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/install/InstallInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lein;->a:Leik;

    iget-object v0, v0, Leik;->c:Leiu;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lein;->a:Leik;

    iget-object v1, v1, Leik;->c:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lein;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALL_START:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lein;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Lein;->a:Leik;

    iget-object v1, v1, Leik;->d:Leiw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_1

    .line 197
    :cond_3
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->INSTALLING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_4

    .line 198
    iget-object v0, p0, Lein;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Lein;->a:Leik;

    invoke-static {v1}, Leik;->a(Leik;)Leiw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->b:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    sget-object v1, Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;->UNZIPPING:Lcom/wandoujia/launcher_base/install/InstallInfo$EventType;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lein;->a:Leik;

    iget-object v0, v0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Lein;->a:Leik;

    iget-object v1, v1, Leik;->e:Leiw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    .line 201
    iget-object v0, p0, Lein;->a:Leik;

    iget v1, p1, Lcom/wandoujia/launcher_base/install/InstallInfo;->c:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Leik;->a(I)V

    goto :goto_1
.end method
