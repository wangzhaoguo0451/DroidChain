.class final Lcrx;
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
        "Lcom/wandoujia/clean/db/model/GarbageBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 65
    check-cast p1, Lcom/wandoujia/clean/db/model/GarbageBean;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    iget v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pathType"

    iget v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->pathType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "contentType"

    iget v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->contentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "latestModification"

    iget-wide v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->latestModification:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "pathMd5"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->pathMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkgNameMd5"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->pkgNameMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "regPkgName"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->regPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rootPathMd5"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->rootPathMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subPath"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->subPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subPathLevel"

    iget v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->subPathLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flag"

    iget v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "appName"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "alertInfo"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->alertInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "simpleAlertInfo"

    iget-object v2, p1, Lcom/wandoujia/clean/db/model/GarbageBean;->simpleAlertInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "garbage_bean"

    return-object v0
.end method
