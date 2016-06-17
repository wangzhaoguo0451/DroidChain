.class public final Lcrd;
.super Ljava/lang/Object;
.source "StorageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcrd;->a:Ljava/util/List;

    iput-object p2, p0, Lcrd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcrd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcrd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;

    .line 357
    iget-object v2, p0, Lcrd;->b:Ljava/lang/String;

    iget-object v3, p0, Lcrd;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method
