.class public final Lerd;
.super Ljava/lang/Object;
.source "PageList.java"

# interfaces
.implements Lagt;
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagt;",
        "Lagu",
        "<TP;>;"
    }
.end annotation


# instance fields
.field public a:Leqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqs",
            "<TP;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

.field public synthetic f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lerd;->c:Z

    .line 55
    iput-boolean v1, p0, Lerd;->d:Z

    .line 56
    iput-boolean v1, p0, Lerd;->g:Z

    .line 57
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->NOT_READY:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lerd;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    goto :goto_0
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lerd;->a()Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lerd;->a:Leqs;

    .line 152
    iput-boolean v2, p0, Lerd;->d:Z

    .line 153
    iput-boolean v2, p0, Lerd;->g:Z

    .line 156
    iget-object v1, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    if-ne v1, v2, :cond_0

    .line 157
    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v1, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 163
    :goto_0
    iget-object v1, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-virtual {v1, v0, p1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 164
    iget-object v0, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish request, error is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/PageList;Ljava/lang/String;)V

    .line 165
    return-void

    .line 159
    :cond_0
    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_FAILED:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v1, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    goto :goto_0
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lerd;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 145
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-boolean v0, p0, Lerd;->d:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lerd;->a:Leqs;

    if-eqz v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lerd;->g:Z

    if-eqz v0, :cond_3

    .line 128
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    .line 130
    iget-object v0, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-static {v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V

    .line 139
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lerd;->g:Z

    .line 142
    iget-object v0, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    invoke-static {v0, p0, p1}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/PageList;Lerd;Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lerd;->f:Lcom/wandoujia/nirvana/framework/network/page/PageList;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Finish request, current page is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    invoke-virtual {v2}, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lerd;->a:Leqs;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lerd;->a:Leqs;

    invoke-virtual {v0}, Leqs;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->a(Lcom/wandoujia/nirvana/framework/network/page/PageList;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lerd;->a:Leqs;

    iget-object v0, v0, Lcom/android/volley/Request;->k:Lagi;

    if-nez v0, :cond_4

    .line 132
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->MISS_CACHE_AND_LOAD_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    goto :goto_1

    .line 133
    :cond_4
    iget-object v0, p0, Lerd;->a:Leqs;

    iget-object v0, v0, Lcom/android/volley/Request;->k:Lagi;

    invoke-virtual {v0}, Lagi;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_INTERMEDIATE:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    goto :goto_1

    .line 136
    :cond_5
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;->HIT_CACHE_SUCCESS:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    iput-object v0, p0, Lerd;->e:Lcom/wandoujia/nirvana/framework/network/page/PageList$PageStatus;

    goto :goto_1

    .line 143
    :cond_6
    const-string v0, "last request"

    goto :goto_2
.end method
