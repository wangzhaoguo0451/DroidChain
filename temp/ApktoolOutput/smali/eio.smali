.class final Leio;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Leij;


# instance fields
.field private synthetic a:Leik;


# direct methods
.method constructor <init>(Leik;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Leio;->a:Leik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 238
    if-eqz p1, :cond_0

    iget-object v0, p0, Leio;->a:Leik;

    iget-object v0, v0, Leik;->c:Leiu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leio;->a:Leik;

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
.method public final a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Leio;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Leio;->a:Leik;

    sget-object v1, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->UNZIPPING:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-static {v0, v1}, Leik;->a(Leik;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    iget-object v1, p0, Leio;->a:Leik;

    iget-object v1, v1, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Leio;->a:Leik;

    iget-object v1, v1, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    .line 234
    :cond_1
    iget-object v0, p0, Leio;->a:Leik;

    invoke-virtual {v0, p2}, Leik;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Leio;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Leio;->a:Leik;

    invoke-static {v0, p2}, Leik;->a(Leik;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    iget-object v1, p0, Leio;->a:Leik;

    iget-object v1, v1, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Leio;->a:Leik;

    iget-object v1, v1, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0
.end method
