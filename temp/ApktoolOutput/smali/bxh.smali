.class public Lbxh;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxb;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:Laf;

.field final c:Lbxz;

.field public d:Lbxd;

.field public e:Ljava/net/Proxy;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxb;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/net/ProxySelector;

.field public k:Ljava/net/CookieHandler;

.field l:Lcom/squareup/okhttp/internal/InternalCache;

.field public m:Ljavax/net/SocketFactory;

.field public n:Ljavax/net/ssl/SSLSocketFactory;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lbwv;

.field public q:Lcom/squareup/okhttp/Authenticator;

.field public r:Lbwz;

.field s:Lcom/squareup/okhttp/internal/Network;

.field public t:Z

.field public u:Z

.field public v:Z

.field w:I

.field public x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbya;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbxh;->a:Ljava/util/List;

    .line 56
    new-array v0, v5, [Lbxb;

    sget-object v1, Lbxb;->a:Lbxb;

    aput-object v1, v0, v2

    sget-object v1, Lbxb;->b:Lbxb;

    aput-object v1, v0, v3

    sget-object v1, Lbxb;->c:Lbxb;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbya;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbxh;->b:Ljava/util/List;

    .line 60
    new-instance v0, Lbxi;

    invoke-direct {v0}, Lbxi;-><init>()V

    sput-object v0, Lbxr;->b:Lbxr;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbxh;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbxh;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbxh;->t:Z

    .line 167
    iput-boolean v1, p0, Lbxh;->u:Z

    .line 168
    iput-boolean v1, p0, Lbxh;->v:Z

    .line 174
    new-instance v0, Lbxz;

    invoke-direct {v0}, Lbxz;-><init>()V

    iput-object v0, p0, Lbxh;->c:Lbxz;

    .line 175
    new-instance v0, Lbxd;

    invoke-direct {v0}, Lbxd;-><init>()V

    iput-object v0, p0, Lbxh;->d:Lbxd;

    .line 176
    return-void
.end method

.method constructor <init>(Lbxh;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbxh;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbxh;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbxh;->t:Z

    .line 167
    iput-boolean v1, p0, Lbxh;->u:Z

    .line 168
    iput-boolean v1, p0, Lbxh;->v:Z

    .line 179
    iget-object v0, p1, Lbxh;->c:Lbxz;

    iput-object v0, p0, Lbxh;->c:Lbxz;

    .line 180
    iget-object v0, p1, Lbxh;->d:Lbxd;

    iput-object v0, p0, Lbxh;->d:Lbxd;

    .line 181
    iget-object v0, p1, Lbxh;->e:Ljava/net/Proxy;

    iput-object v0, p0, Lbxh;->e:Ljava/net/Proxy;

    .line 182
    iget-object v0, p1, Lbxh;->f:Ljava/util/List;

    iput-object v0, p0, Lbxh;->f:Ljava/util/List;

    .line 183
    iget-object v0, p1, Lbxh;->g:Ljava/util/List;

    iput-object v0, p0, Lbxh;->g:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lbxh;->h:Ljava/util/List;

    iget-object v1, p1, Lbxh;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lbxh;->i:Ljava/util/List;

    iget-object v1, p1, Lbxh;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p1, Lbxh;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Lbxh;->j:Ljava/net/ProxySelector;

    .line 187
    iget-object v0, p1, Lbxh;->k:Ljava/net/CookieHandler;

    iput-object v0, p0, Lbxh;->k:Ljava/net/CookieHandler;

    .line 188
    iget-object v0, p1, Lbxh;->A:Laf;

    iput-object v0, p0, Lbxh;->A:Laf;

    .line 189
    iget-object v0, p0, Lbxh;->A:Laf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxh;->A:Laf;

    iget-object v0, v0, Laf;->G:Lcom/squareup/okhttp/internal/InternalCache;

    :goto_0
    iput-object v0, p0, Lbxh;->l:Lcom/squareup/okhttp/internal/InternalCache;

    .line 190
    iget-object v0, p1, Lbxh;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lbxh;->m:Ljavax/net/SocketFactory;

    .line 191
    iget-object v0, p1, Lbxh;->n:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lbxh;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 192
    iget-object v0, p1, Lbxh;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lbxh;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 193
    iget-object v0, p1, Lbxh;->p:Lbwv;

    iput-object v0, p0, Lbxh;->p:Lbwv;

    .line 194
    iget-object v0, p1, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    iput-object v0, p0, Lbxh;->q:Lcom/squareup/okhttp/Authenticator;

    .line 195
    iget-object v0, p1, Lbxh;->r:Lbwz;

    iput-object v0, p0, Lbxh;->r:Lbwz;

    .line 196
    iget-object v0, p1, Lbxh;->s:Lcom/squareup/okhttp/internal/Network;

    iput-object v0, p0, Lbxh;->s:Lcom/squareup/okhttp/internal/Network;

    .line 197
    iget-boolean v0, p1, Lbxh;->t:Z

    iput-boolean v0, p0, Lbxh;->t:Z

    .line 198
    iget-boolean v0, p1, Lbxh;->u:Z

    iput-boolean v0, p0, Lbxh;->u:Z

    .line 199
    iget-boolean v0, p1, Lbxh;->v:Z

    iput-boolean v0, p0, Lbxh;->v:Z

    .line 200
    iget v0, p1, Lbxh;->w:I

    iput v0, p0, Lbxh;->w:I

    .line 201
    iget v0, p1, Lbxh;->x:I

    iput v0, p0, Lbxh;->x:I

    .line 202
    iget v0, p1, Lbxh;->y:I

    iput v0, p0, Lbxh;->y:I

    .line 203
    return-void

    .line 189
    :cond_0
    iget-object v0, p1, Lbxh;->l:Lcom/squareup/okhttp/internal/InternalCache;

    goto :goto_0
.end method

.method static synthetic a(Lbxh;)Lcom/squareup/okhttp/internal/Network;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lbxh;->s:Lcom/squareup/okhttp/internal/Network;

    return-object v0
.end method

.method private b()Lbxh;
    .locals 1

    .prologue
    .line 652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxh;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 654
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(Lbxj;)Lbws;
    .locals 1
    .parameter

    .prologue
    .line 571
    new-instance v0, Lbws;

    invoke-direct {v0, p0, p1}, Lbws;-><init>(Lbxh;Lbxj;)V

    return-object v0
.end method

.method final declared-synchronized a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbxh;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 639
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 640
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 641
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lbxh;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    :cond_0
    :try_start_2
    sget-object v0, Lbxh;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 643
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lbxh;->b()Lbxh;

    move-result-object v0

    return-object v0
.end method
