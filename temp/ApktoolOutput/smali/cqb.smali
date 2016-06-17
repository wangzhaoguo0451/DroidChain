.class final Lcqb;
.super Lcom/redstone/sdk/enabler/remote/IRsServiceObserver$Stub;
.source "Installer.java"


# instance fields
.field private synthetic a:Lcpw;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcpw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcqb;->a:Lcpw;

    iput-object p2, p0, Lcqb;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/redstone/sdk/enabler/remote/IRsServiceObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 230
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcqb;->a:Lcpw;

    iget-object v1, p0, Lcqb;->b:Ljava/lang/String;

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Lcpw;->a(Ljava/lang/String;I)V

    .line 232
    const-string v0, "redstone.install.faild"

    iget-object v1, p0, Lcqb;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ld;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    if-ne p2, v2, :cond_0

    .line 235
    const-string v0, "redstone.install.faild"

    iget-object v1, p0, Lcqb;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ld;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
