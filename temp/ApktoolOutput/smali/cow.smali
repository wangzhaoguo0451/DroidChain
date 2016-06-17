.class final Lcow;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcow;->a:Ljava/lang/String;

    iput p2, p0, Lcow;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcow;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcow;->a:Ljava/lang/String;

    iget v1, p0, Lcow;->b:I

    invoke-static {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->fromCode(I)Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    iget-boolean v1, p0, Lcow;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/lang/String;Z)V

    .line 202
    return-void
.end method
