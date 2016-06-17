.class final Lafm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lafl;


# direct methods
.method constructor <init>(Lafl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafm;->a:Lafl;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lafm;->a:Lafl;

    new-instance v1, Ladu;

    sget-object v2, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v2}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {v0, p0, v1}, Lafl;->a(Ljava/lang/Object;Ladu;)V

    .line 91
    return-void
.end method
