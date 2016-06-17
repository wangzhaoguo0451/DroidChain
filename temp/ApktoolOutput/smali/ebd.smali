.class final Lebd;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ldyg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldyg",
        "<",
        "Lcom/wandoujia/launcher/gift/http/model/GiftModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lebb;


# direct methods
.method constructor <init>(Lebb;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lebd;->a:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldyh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldyh",
            "<",
            "Lcom/wandoujia/launcher/gift/http/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p1, Ldyh;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldyh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lebe;

    invoke-direct {v0, p0, p1}, Lebe;-><init>(Lebd;Ldyh;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lebd;->a:Lebb;

    invoke-virtual {v0}, Lebb;->b()V

    .line 212
    const-string v0, "folder_gift_list"

    invoke-static {v0}, Ld;->M(Ljava/lang/String;)V

    goto :goto_0
.end method
