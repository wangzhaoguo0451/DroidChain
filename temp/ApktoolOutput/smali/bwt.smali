.class final Lbwt;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# instance fields
.field private final a:I

.field private final b:Lbxj;

.field private final c:Z

.field private synthetic d:Lbws;


# direct methods
.method constructor <init>(Lbws;ILbxj;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lbwt;->d:Lbws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lbwt;->a:I

    .line 209
    iput-object p3, p0, Lbwt;->b:Lbxj;

    .line 210
    iput-boolean p4, p0, Lbwt;->c:Z

    .line 211
    return-void
.end method


# virtual methods
.method public final connection()Lbwy;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public final proceed(Lbxj;)Lbxn;
    .locals 4
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lbwt;->a:I

    iget-object v1, p0, Lbwt;->d:Lbws;

    iget-object v1, v1, Lbws;->a:Lbxh;

    iget-object v1, v1, Lbxh;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    new-instance v1, Lbwt;

    iget-object v0, p0, Lbwt;->d:Lbws;

    iget v2, p0, Lbwt;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lbwt;->c:Z

    invoke-direct {v1, v0, v2, p1, v3}, Lbwt;-><init>(Lbws;ILbxj;Z)V

    .line 225
    iget-object v0, p0, Lbwt;->d:Lbws;

    iget-object v0, v0, Lbws;->a:Lbxh;

    iget-object v0, v0, Lbxh;->h:Ljava/util/List;

    iget v2, p0, Lbwt;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Interceptor;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lbxn;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbwt;->d:Lbws;

    iget-boolean v1, p0, Lbwt;->c:Z

    invoke-virtual {v0, p1, v1}, Lbws;->a(Lbxj;Z)Lbxn;

    move-result-object v0

    goto :goto_0
.end method

.method public final request()Lbxj;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lbwt;->b:Lbxj;

    return-object v0
.end method
