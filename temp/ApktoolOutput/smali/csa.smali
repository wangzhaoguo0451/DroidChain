.class final Lcsa;
.super Ljava/lang/Object;
.source "DbUtils.java"

# interfaces
.implements Lcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcru",
        "<",
        "Lcom/wandoujia/clean/db/model/WhiteListBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 177
    check-cast p1, Lcom/wandoujia/clean/db/model/WhiteListBean;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "filePath"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/WhiteListBean;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget v2, p1, Lcom/wandoujia/clean/db/model/WhiteListBean;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "white_list"

    return-object v0
.end method
